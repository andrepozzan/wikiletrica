# Como contribuir

O método mais simples não exige conhecimento prévio de Git ou GitHub.

## Linux

Execute:

```bash
./scripts/contribute.sh
```

Na primeira vez, o script pode solicitar a senha do administrador para
instalar Git, GitHub CLI e Obsidian. Depois, ele abre o navegador para
autorizar o acesso ao GitHub.

## Windows

1. Execute `scripts\contribute.bat` pelo Explorador de Arquivos ou pelo terminal.
2. Autorize o GitHub no navegador quando solicitado.
3. Se ferramentas forem instaladas durante a execucao, feche e abra o script
   novamente quando solicitado.

O script cria um fork, baixa uma copia atualizada do projeto, usa uma branch
persistente com seu nome de usuario, atualiza essa branch com a `main` e abre
o Obsidian configurado na pasta do projeto. Depois, ele envia suas alterações
e cria ou atualiza o Pull Request.

## Editor recomendado

O [Obsidian](https://obsidian.md/) é adequado porque funciona com pastas
normais de arquivos Markdown e permite navegar pelos documentos do projeto.
O script instala o Obsidian e usa a configuração compartilhada em
`.obsidian/app.json`, que faz parte do repositório.
Os arquivos e pastas usados pelo código do site, como `src/`, `blog/`,
`build/`, `scripts/` e `.github/`, ficam ocultos no painel do Obsidian.
Para colaborar, normalmente basta usar `docs/` e `static/`.

## Alterações

- Edite os arquivos em `docs/`.
- Não altere arquivos em `build/`, pois esse diretório é gerado.
- Preserve o cabeçalho YAML no inicio dos arquivos que já tiverem um.
- Anexe imagens em `static/` ou em `docs/anexos/`, quando apropriado.

Antes de enviar, o script verifica se existem alterações. Ele cria uma branch,
faz o commit, envia para seu fork e abre o Pull Request. Depois da revisão,
aguarde a aprovação dos mantenedores antes de apagar a copia local.

Assistentes de IA podem consultar [AGENTS.md](./AGENTS.md) para entender
a estrutura do projeto, editar Markdown corretamente e seguir este fluxo
de contribuicao sem alterar arquivos gerados.

## Publicação automática

Cada alteração aceita na branch `main` inicia automaticamente o workflow
`.github/workflows/deploy-pages.yml`. Ele instala Node.js, compila o
Docusaurus e publica o diretório `build` no GitHub Pages.

Não execute `npm run deploy` para contribuições normais. Configure em
**Settings > Pages > Source > GitHub Actions**. O site será atualizado após
a conclusão do workflow.
