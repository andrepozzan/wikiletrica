@echo off
setlocal

set "REPO=andrepozzan/wikiletrica"

where git >nul 2>&1
if errorlevel 1 (
  where winget >nul 2>&1
  if errorlevel 1 (
    echo Instale o Windows App Installer para continuar.
    pause
    exit /b 1
  )
  echo Instalando Git...
  winget install --exact --id Git.Git --accept-package-agreements --accept-source-agreements
  if exist "%ProgramFiles%\Git\cmd\git.exe" set "PATH=%ProgramFiles%\Git\cmd;%PATH%"
)

where gh >nul 2>&1
if errorlevel 1 (
  echo Instalando GitHub CLI...
  winget install --exact --id GitHub.cli --accept-package-agreements --accept-source-agreements
  if exist "%ProgramFiles%\GitHub CLI\gh.exe" set "PATH=%ProgramFiles%\GitHub CLI;%PATH%"
)

where obsidian >nul 2>&1
if errorlevel 1 (
  if not exist "%LOCALAPPDATA%\Obsidian\Obsidian.exe" if not exist "%LOCALAPPDATA%\Programs\Obsidian\Obsidian.exe" (
    echo Instalando Obsidian...
    winget install --exact --id Obsidian.Obsidian --accept-package-agreements --accept-source-agreements
  )
)

where git >nul 2>&1
if errorlevel 1 (
  echo Reinicie o Windows e execute este script novamente.
  pause
  exit /b 1
)
where gh >nul 2>&1
if errorlevel 1 (
  echo Reinicie o Windows e execute este script novamente.
  pause
  exit /b 1
)

gh auth status >nul 2>&1
if errorlevel 1 (
  echo Abrindo a autorizacao do GitHub...
  gh auth login
  if errorlevel 1 exit /b 1
)

git config --get user.name >nul 2>&1
if errorlevel 1 (
  for /f "delims=" %%N in ('gh api user --jq ".name // .login"') do git config --global user.name "%%N"
)
git config --get user.email >nul 2>&1
if errorlevel 1 (
  for /f "tokens=* delims=" %%E in ('gh api user/public_emails --jq ".[0].email // empty"') do set "GIT_EMAIL=%%E"
  if "%GIT_EMAIL%"=="" (
    for /f "delims=" %%I in ('gh api user --jq ".id"') do set "GITHUB_ID=%%I"
    for /f "delims=" %%U in ('gh api user --jq ".login"') do set "GIT_EMAIL=%GITHUB_ID%+%%U@users.noreply.github.com"
  )
  git config --global user.email "%GIT_EMAIL%"
)

for %%I in ("%~dp0..") do set "ROOT=%%~fI"
cd /d "%ROOT%" || exit /b 1

git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
  echo Clonando a Wikilétrica...
  cd /d "%USERPROFILE%"
  gh repo clone %REPO% Wikiletrica
  cd /d "%USERPROFILE%\Wikilétrica"
)

git status --porcelain | findstr . >nul
if not errorlevel 1 (
  echo Erro: existem alteracoes locais nao finalizadas.
  echo Salve-as ou descarte-as antes de executar o script novamente.
  pause
  exit /b 1
)

git remote get-url upstream >nul 2>&1
if errorlevel 1 git remote add upstream https://github.com/%REPO%.git

echo Criando ou atualizando seu fork...
gh repo fork %REPO% --remote=false
if errorlevel 1 (
  echo Nao foi possivel criar o fork.
  pause
  exit /b 1
)

for /f "delims=" %%U in ('gh api user --jq ".login"') do set "USERNAME=%%U"

git remote get-url fork >nul 2>&1
if errorlevel 1 (
  git remote add fork https://github.com/%USERNAME%/wikiletrica.git
) else (
  git remote set-url fork https://github.com/%USERNAME%/wikiletrica.git
)

git fetch upstream
git fetch fork 2>nul
git switch main
git pull --ff-only upstream main
if errorlevel 1 (
  echo Nao foi possivel atualizar a branch main.
  pause
  exit /b 1
)

set "BRANCH=contribuicoes/%USERNAME%"

git show-ref --verify --quiet "refs/heads/%BRANCH%"
if errorlevel 1 (
  git show-ref --verify --quiet "refs/remotes/fork/%BRANCH%"
  if errorlevel 1 (
    git switch -c "%BRANCH%"
  ) else (
    git switch --track -c "%BRANCH%" "fork/%BRANCH%"
  )
) else (
  git switch "%BRANCH%"
)

git merge-base --is-ancestor upstream/main HEAD
if errorlevel 1 (
  echo Atualizando sua branch com a main mais recente...
  git merge --no-edit upstream/main
  if errorlevel 1 (
    echo Nao foi possivel atualizar a branch automaticamente.
    pause
    exit /b 1
  )
  git push fork "%BRANCH%"
) else (
  echo Sua branch ja esta atualizada com a main.
)

if exist "%LOCALAPPDATA%\Obsidian\Obsidian.exe" (
  echo Abrindo Obsidian...
  start "" "%LOCALAPPDATA%\Obsidian\Obsidian.exe" "obsidian://open?path=%ROOT%"
) else if exist "%LOCALAPPDATA%\Programs\Obsidian\Obsidian.exe" (
  echo Abrindo Obsidian...
  start "" "%LOCALAPPDATA%\Programs\Obsidian\Obsidian.exe" "obsidian://open?path=%ROOT%"
) else (
  echo Obsidian nao foi encontrado. A pasta do projeto sera aberta no Explorador.
  start "" "%ROOT%"
)

echo.
echo Edite e salve os arquivos Markdown em:
echo %ROOT%\docs
pause

git status --porcelain -- docs static | findstr . >nul
if errorlevel 1 (
  echo Nenhuma alteracao detectada. Nada sera enviado.
  pause
  exit /b 0
)

set /p "PR_TITLE=Titulo resumido da contribuicao: "
if "%PR_TITLE%"=="" set "PR_TITLE=Atualizacao da Wikilétrica"

git add docs static
git diff --cached --stat

set /p "CONFIRM=Confirmar e enviar estas alteracoes? (s/N): "
if /i not "%CONFIRM%"=="s" (
  echo Cancelado. As alteracoes continuam na branch %BRANCH%.
  pause
  exit /b 0
)

git commit -m "%PR_TITLE%"
if errorlevel 1 (
  echo Nao foi possivel criar o commit.
  pause
  exit /b 1
)

git push -u fork "%BRANCH%"
if errorlevel 1 (
  echo Nao foi possivel enviar a branch.
  pause
  exit /b 1
)

gh pr view --repo %REPO% --head "%USERNAME%:%BRANCH%" --json url --jq ".url" > "%TEMP%\wikiletrica-pr-url.txt" 2>nul
if not errorlevel 1 (
  set /p "PR_URL=" < "%TEMP%\wikiletrica-pr-url.txt"
  echo O Pull Request existente foi atualizado:
  echo %PR_URL%
) else (
  gh pr create --repo %REPO% --head "%USERNAME%:%BRANCH%" --base main --title "%PR_TITLE%" --body "Contribuicao enviada pelo script automatizado."
  if errorlevel 1 (
    echo O Pull Request nao foi criado.
    pause
    exit /b 1
  )
)

echo.
echo Contribuicao enviada com sucesso.
pause
