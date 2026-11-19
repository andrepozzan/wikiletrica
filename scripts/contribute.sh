#!/usr/bin/env bash
set -euo pipefail

REPO="andrepozzan/wikiletrica"

install_git_and_gh() {
  if command -v apt-get >/dev/null 2>&1; then
    echo "Instalando Git, GitHub CLI e dependencias..."
    sudo apt-get update
    sudo apt-get install -y git gh curl
  elif command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y git gh curl
  elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -Sy --needed --noconfirm git github-cli curl
  elif command -v zypper >/dev/null 2>&1; then
    sudo zypper install -y git gh curl
  else
    echo "Nao foi possivel identificar o gerenciador de pacotes."
    echo "Instale Git, GitHub CLI e curl manualmente e execute novamente."
    exit 1
  fi
}

install_obsidian() {
  command -v obsidian >/dev/null 2>&1 && return
  [[ -x "$HOME/.local/bin/obsidian" ]] && return

  echo "Instalando Obsidian..."
  mkdir -p "$HOME/.local/bin"

  if command -v apt-get >/dev/null 2>&1; then
    ASSET="$(gh api repos/obsidianmd/obsidian-releases/releases/latest \
      --jq '.assets[].browser_download_url | select(test("amd64[.]deb$"))' | head -n 1)"
  elif command -v dnf >/dev/null 2>&1; then
    ASSET="$(gh api repos/obsidianmd/obsidian-releases/releases/latest \
      --jq '.assets[].browser_download_url | select(test("[.]rpm$"))' | head -n 1)"
  else
    ASSET="$(gh api repos/obsidianmd/obsidian-releases/releases/latest \
      --jq '.assets[].browser_download_url | select(test("AppImage$"))' | head -n 1)"
  fi

  if [[ -z "$ASSET" ]]; then
    echo "Nao foi possivel localizar o instalador do Obsidian."
    return
  fi

  TMP="${TMPDIR:-/tmp}/obsidian-installer"
  curl -fL "$ASSET" -o "$TMP"

  if [[ "$ASSET" == *.deb ]]; then
    sudo apt-get install -y "$TMP"
  elif [[ "$ASSET" == *.rpm ]]; then
    sudo dnf install -y "$TMP"
  else
    mv "$TMP" "$HOME/.local/bin/Obsidian.AppImage"
    chmod +x "$HOME/.local/bin/Obsidian.AppImage"
  fi
}

if ! command -v git >/dev/null 2>&1 || ! command -v gh >/dev/null 2>&1; then
  install_git_and_gh
fi

install_obsidian

if ! gh auth status >/dev/null 2>&1; then
  echo "Sua conta do GitHub sera aberta no navegador..."
  gh auth login --web --git-protocol https
fi

if [[ -z "$(git config --get user.name)" ]]; then
  GIT_NAME="$(gh api user --jq '.name // .login')"
  git config --global user.name "$GIT_NAME"
fi
if [[ -z "$(git config --get user.email)" ]]; then
  GIT_EMAIL="$(gh api user/public_emails --jq '.[0].email // empty' 2>/dev/null)"
  if [[ -z "$GIT_EMAIL" ]]; then
    GIT_EMAIL="$(gh api user --jq '.id')+$(gh api user --jq '.login')@users.noreply.github.com"
  fi
  git config --global user.email "$GIT_EMAIL"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT"

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Erro: existem alteracoes locais nao finalizadas."
  echo "Salve-as ou descarte-as antes de executar o script novamente."
  exit 1
fi

if git remote get-url upstream >/dev/null 2>&1; then
  git remote set-url upstream "https://github.com/$REPO.git"
else
  git remote add upstream "https://github.com/$REPO.git"
fi

echo "Criando ou atualizando seu fork..."
gh repo fork "$REPO" --remote=false >/dev/null
USERNAME="$(gh api user --jq '.login')"
BRANCH="contribuicoes/$USERNAME"

if git remote get-url fork >/dev/null 2>&1; then
  git remote set-url fork "https://github.com/$USERNAME/wikiletrica.git"
else
  git remote add fork "https://github.com/$USERNAME/wikiletrica.git"
fi

git fetch upstream
git fetch fork || true
git switch main
git pull --ff-only upstream main

if git show-ref --verify --quiet "refs/heads/$BRANCH"; then
  git switch "$BRANCH"
elif git show-ref --verify --quiet "refs/remotes/fork/$BRANCH"; then
  git switch --track -c "$BRANCH" "fork/$BRANCH"
else
  git switch -c "$BRANCH"
fi

if ! git merge-base --is-ancestor upstream/main HEAD; then
  echo "Atualizando sua branch com a main mais recente..."
  git merge --no-edit upstream/main
  git push fork "$BRANCH"
else
  echo "Sua branch ja esta atualizada com a main."
fi

if command -v obsidian >/dev/null 2>&1; then
  obsidian "obsidian://open?path=$(python3 -c 'import os,sys,urllib.parse; print(urllib.parse.quote(sys.argv[1]))' "$ROOT")" >/dev/null 2>&1 &
elif [[ -x "$HOME/.local/bin/Obsidian.AppImage" ]]; then
  "$HOME/.local/bin/Obsidian.AppImage" >/dev/null 2>&1 &
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$ROOT" >/dev/null 2>&1 &
fi

echo
echo "Edite os arquivos em:"
echo "$ROOT/docs"
read -r -p "Pressione Enter depois de salvar todas as alteracoes..." _

if [[ -z "$(git status --porcelain -- docs static)" ]]; then
  echo "Nenhuma alteracao detectada. Nada sera enviado."
  exit 0
fi

read -r -p "Titulo resumido da contribuicao: " PR_TITLE
if [[ -z "${PR_TITLE// }" ]]; then
  PR_TITLE="Atualizacao da Wikilétrica"
fi

git add docs static
git diff --cached --stat

read -r -p "Confirmar e enviar estas alteracoes? (s/N): " CONFIRM
if [[ ! "$CONFIRM" =~ ^[sS]$ ]]; then
  echo "Cancelado. As alteracoes continuam na branch $BRANCH."
  exit 0
fi

git commit -m "$PR_TITLE"
git push fork "$BRANCH"

if PR_URL="$(gh pr view --repo "$REPO" --head "$USERNAME:$BRANCH" --json url --jq '.url' 2>/dev/null)"; then
  echo "O Pull Request existente foi atualizado:"
  echo "$PR_URL"
else
  PR_URL="$(gh pr create --repo "$REPO" --head "$USERNAME:$BRANCH" --base main \
    --title "$PR_TITLE" --body "Contribuicao enviada pelo script automatizado.")"
  echo "Pull Request criado:"
  echo "$PR_URL"
fi
