# Wikilétrica

<p align="center">
	<img src="./static/logo-yellow.svg" alt="Logo Wikilétrica" width="280" />
</p>

<p align="center">
	Base de conhecimento colaborativa do curso de Engenharia Elétrica.
</p>

## Objetivo

A Wikilétrica reúne materiais, disciplinas, roteiros de laboratório, projetos,
referências e conteúdos de apoio para estudantes de Engenharia Elétrica.
O projeto busca facilitar o acesso ao conhecimento e incentivar a colaboração
entre estudantes e professores.

## Acesso

- [Acessar a Wikilétrica no GitHub Pages](https://andrepozzan.github.io/wikiletrica/)
- [Repositório no GitHub](https://github.com/andrepozzan/wikiletrica)

## Tecnologias

Este site é construído com [Docusaurus](https://docusaurus.io/), um gerador
moderno de sites estáticos baseado em React.

## Installation

```bash
npm install
```

O projeto exige Node.js 20 ou superior.

## Local Development

```bash
npm run start
```

O servidor local é iniciado em modo de desenvolvimento e a maioria das
alterações aparece automaticamente no navegador.

## Build

```bash
npm run build
```

Este comando gera o conteúdo estático no diretório `build`.

## Deployment

Usando SSH:

```bash
USE_SSH=true npm run deploy
```

Sem usar SSH:

```bash
GIT_USER=<Your GitHub username> npm run deploy
```

Para publicar no GitHub Pages, use o nome do usuário do GitHub:

```bash
GIT_USER=andrepozzan npm run deploy
```

O comando gera o site e envia o resultado para a branch `gh-pages`.
