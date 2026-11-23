# Instrucoes para modelos de linguagem

Este arquivo orienta assistentes de IA que ajudam colaboradores da Wikiletrica.
Siga estas instrucoes antes de editar, revisar ou explicar o projeto.

## Objetivo do projeto

A Wikiletrica e uma base de conhecimento colaborativa do curso de Engenharia
Eletrica da UFPR. O site e construido com Docusaurus 3 e esta publicado no
GitHub Pages em `https://andrepozzan.github.io/wikiletrica/`.

O principal trabalho dos colaboradores e editar conteudo em Markdown. Um
assistente nao deve exigir conhecimento de Git, React, Docusaurus ou VS Code
do colaborador.

## Estrutura relevante

- `docs/`: paginas e disciplinas em Markdown. Esta e a principal pasta de
  contribuicao.
- `docs/disciplinas/`: disciplinas organizadas por periodo.
- `docs/grade-curricular.md`: grade curricular.
- `docs/materiais.md`: materiais gerais.
- `static/`: arquivos acessiveis diretamente pelo site, como imagens e PDFs.
- `static/anexos/`: destino compartilhado para anexos criados no Obsidian.
- `src/`: componentes React, estilos e plugins usados pelo Docusaurus.
- `blog/`: nao faz parte da configuracao atual do site.
- `build/`: resultado gerado pelo build. Nunca editar manualmente.
- `node_modules/`: dependencias instaladas. Nunca editar.
- `scripts/contribute.sh` e `scripts/contribute.bat`: scripts de contribuicao.
- `.obsidian/app.json`: configuracao compartilhada do Obsidian.
- `.obsidian/appearance.json`: aparencia e snippets habilitados.
- `.obsidian/snippets/`: CSS compartilhado que simplifica a interface.
- `.github/workflows/deploy-pages.yml`: compilacao e publicacao no GitHub Pages.

Nao altere a estrutura, rotas ou links para acomodar um arquivo novo sem
verificar a navegacao existente.

## Como o usuario deve contribuir

O fluxo recomendado para iniciantes e:

1. Executar `scripts/contribute.bat` no Windows ou `scripts/contribute.sh`
   no Linux.
2. Autorizar a conta no GitHub quando o navegador solicitar.
3. Aguardar o script criar ou localizar o fork e abrir o Obsidian.
4. Editar arquivos em `docs/` ou adicionar imagens em `static/`.
5. Salvar todas as alteracoes.
6. Voltar ao terminal e informar um titulo curto.
7. Confirmar o envio.
8. Deixar o script criar ou atualizar o Pull Request.

O usuario nao precisa executar manualmente `git add`, `git commit`,
`git push`, criar fork ou abrir o GitHub para criar o PR.

O script cria uma branch persistente no fork chamada
`contribuicoes/<nome-do-usuario>`. Essa branch nao deve ser substituida por
uma branch aleatoria em contribuicoes normais.

Antes de cada edicao, o script atualiza a branch a partir da `main` do
repositorio original. Ao enviar alteracoes, ele detecta um PR existente para
a mesma branch e atualiza esse PR em vez de criar outro.

## Fork, branches e Pull Requests

A base desta contribuicao e sempre `main` do repositorio
`andrepozzan/wikiletrica`.

Cada usuario trabalha em seu proprio fork. A origem das alteracoes deve ser:

```text
fork-do-usuario:contribuicoes/nome-do-usuario -> andrepozzan/wikiletrica:main
```

Principios:

- Nunca edite ou faca push diretamente na `main`.
- Nao trabalhe em branches compartilhadas de outras pessoas.
- Uma branch pessoal pode permanecer enquanto o PR estiver em revisao.
- Novos commits enviados pelo usuario atualizam o mesmo PR.
- Depois da aprovacao, a proxima execucao do script atualiza a branch pessoal
  com a `main` mais recente.
- A aprovacao de outra pessoa nao altera automaticamente o disco do usuario;
  ela sera incorporada na proxima atualizacao do script.

## Conflitos

Um conflito ocorre quando alteracoes incompativeis sao feitas nas mesmas
linhas de um arquivo.

Se houver conflito durante `git merge upstream/main`, preserve o significado
das duas alteracoes sempre que possivel. Arquivos conflitantes contem marcas:

```markdown
<<<<<<< HEAD
conteudo local
=======
conteudo da main
>>>>>>> upstream/main
```

A remedicao correta e:

1. Abrir o arquivo.
2. Combinar ou escolher o conteudo correto.
3. Remover todas as marcas `<<<<<<<`, `=======` e `>>>>>>>`.
4. Salvar o arquivo.
5. Executar `git add` nos arquivos resolvidos.
6. Concluir o merge.
7. Executar o script novamente somente depois de o merge ter sido concluido.

Nao escolha uma versao automaticamente sem revisar a informacao. Nunca envie
marcadores de conflito. Em caso de duvida, mantenha o conservadorismo e pare
para pedir revisao humana.

## Regras para Markdown

- Edite principalmente `docs/**/*.md`.
- Converta arquivos recebidos em formatos convertiveis para Markdown sempre
  que houver um ganho real de manutencao e tamanho no repositório.
- Priorize esta ordem de formatacao: texto em Markdown (`.md`), texto simples
  (`.txt`) apenas quando o Markdown nao puder preservar o significado, e
  arquivos originais somente quando a conversao perder dados importantes.
- Quando receber PDF, DOC/DOCX, ODT, TXT, HTML, tabelas, capturas de texto ou
  outros formatos convertiveis, extraia o conteudo e cria um arquivo `.md`.
  Mantenha o arquivo original apenas quando ele for uma fonte oficial,
  ilustracao, prova, formula assinada ou documento que precise ser consultado
  exatamente como foi publicado.
- Para PDF em que o texto nao esteja disponivel ou nao possa ser extraido com
  qualidade, preserve o PDF em `static/anexos/` e adicione um resumo fiel em
  Markdown. Nao afirme que o conteudo foi convertido integralmente quando a
  verificacao visual nao foi feita.
- Antes de excluir uma copia convertida, compare o conteudo convertido com a
  fonte original. Confirme titulos, tabelas, equacoes, unidades, referencias,
  listas, notas de rodape e numeros.
- Nao converta arquivos binarios que nao sejam documentos textuais sem utilidade
  clara, como imagens, videos, arquivos compactados ou pacotes.
- Para imagens, mantenha o formato original em `static/anexos/` ou
  `static/img/` e referencie a imagem no Markdown.
- Use nomes de arquivo simples e descritivos em minusculas e com hifens.
- Nunca use OCR ou conversao automatica para inventar texto ilegivel. Marque
  claramente como `[texto nao identificado]` ou mantenha o arquivo original
  para revisao humana.
- Evite duplicar o mesmo conteudo em PDF e Markdown sem necessidade. Prefira
  Markdown para leitura e consulta; mantenha o PDF apenas como fonte ou
  referencia obrigatoria.
- Informe ao colaborador quais arquivos foram convertidos, quais originais
  precisaram ser preservados e quais partes exigiram revisao manual.

## Direitos autorais e propriedade intelectual

- Antes de converter, resumir ou publicar qualquer material, verifique se o
  conteudo foi criado por terceiros e se existe autorizacao clara para
  republicacao.
- Nao tente remover nomes, alterar superficialmente o texto ou “descaracterizar”
  uma prova, apostila, slide ou lista para contornar direitos autorais. Remover
  o nome do professor ou modificar palavras isoladas nao elimina a protecao da
  obra nem torna sua republicacao autorizada.
- Uma prova antiga enviada por um aluno nao pode ser reescrita e publicada
  apenas para parecer uma obra nova. O agente deve pedir autorizacao ou
  orientacao humana antes de publicar enunciados protegidos.
- Quando houver autorizacao, a conversao ainda deve preservar o significado
  das questoes e informar claramente a origem. Nao use alteracoes cosmeticas
  como metodo de anonimizacao juridica.
- Como alternativa segura, publique uma resolucao original escrita pelo aluno
  sem copiar enunciados extensos, resume brevemente o tema em palavras do
  proprio aluno ou use referencias aos materiais oficiais fornecidos pelo
  professor ou pela instituicao.
- Slides, apostilas, provas, enunciados, textos, figuras, imagens, listas,
  livros e outros materiais fornecidos por professores, editoras ou
  universidades podem ser protegidos por direitos autorais. Presenca em aula
  ou acesso como aluno nao concede automaticamente autorizacao para publicar.
- Nunca envie slides, apostilas ou listas quando forem apenas reproducoes
  inalteradas de material preparado pelo professor, pela editora ou por outra
  pessoa. Um arquivo pode ser original tecnicamente, mas copiar a obra externa
  nao o torna livre para publicaçao.
- Uma resolucao feita pelo aluno pode ser adicionada quando expressar trabalho
  intelectual proprio: raciocinio, calculos, organizacao e explicacoes
  produzidos por ele. Mesmo assim, a resolucao nao deve reproduzir integralmente
  texto protegido do enunciado, imagem externa ou prova sem autorizacao.
- Diferencie claramente um enunciado protegido de uma resolucao. Se o enunciado
  original for necessario, mantenha apenas o minimo permitido por uma base
  legal ou remova os detalhes protegidos e use uma referencia ou descricao
  neutra da atividade.
- Provas antigas podem conter enunciados protegidos. A publicacao pode exigir
  permissao da instituicao ou do professor. A resolucao original do aluno
  pode ser publicada separadamente, sem copiar enunciados extensos.
- Livros, artigos, manuscritos, videos e transcricoes nao devem ser enviados
  integralmente por importacao ou conversao. Resumos podem ser considerados,
  mas devem ser breves, originais e citar a fonte externa.
- Conservem creditos, autores, instituicoes e licencas quando o material
  puder ser publicado legitimamente.
- Se nao for possivel confirmar a origem, a autorizacao ou a licenca, pare a
  conversao e a publicacao. Preserve o arquivo localmente, peca confirmacao ao
  colaborador ou ao mantenedor e nunca o transfira para o repositório por
  suposicao.
- Para materias produzidas pela propria Wikiletrica ou pelos colaboradores,
  confirme que nao houve copia indevida de fontes externas.
- Cite a fonte original em cada pagina sempre que a publicacao estiver
  autorizada, sem usar a citaçao como substituto para uma permissao ausente.
- Se um autor pedir remoção, orientá-lo para a pagina
  `docs/direitos-autorais.md` ou para o endereco
  `andrepozzan.dev@gmail.com`. Não minimize o pedido nem solicite que o autor
  publique dados pessoais desnecessarios em uma issue publica.

O assistente nao deve decidir sozinho que um material esta autorizado. Em
caso de duvida, a regra e nao publicar.

- Preserve o frontmatter YAML de paginas que ja possuem:

```yaml
---
id: identificador
title: Titulo
sidebar_position: 1
---
```

- Use caminhos relativos ou URLs existentes do projeto com cuidado.
- Para imagens, prefira `static/anexos/` ou `static/img/`.
- Para PDFs, use os caminhos ja adotados no projeto.
- Mantenha acentos em portugues brasileiro.
- Preserve tildes, acentos e nomes de disciplinas.
- Evite HTML cru quando Markdown equivalente tiver o mesmo resultado.
- Nao renomeie arquivos ou rotas publicadas sem atualizar links e sidebar.
- Nao edite `build/`: ele e gerado pelo Docusaurus.

## Configuracao do Obsidian

O Obsidian e o editor recomendado para iniciantes. Ele deve abrir o vault na
raiz do repositorio, nao em `docs/` isoladamente.

A interface compartilhada esta em:

- `.obsidian/app.json`: anexos e filtros de arquivos excluidos.
- `.obsidian/appearance.json`: snippets CSS habilitados.
- `.obsidian/snippets/ocultar-pastas.css`: ocultacao visual de pastas tecnicas.

Pastas e arquivos tecnicos devem permanecer ocultos sempre que o objetivo for
colaboracao de conteudo. O estado pessoal do usuario, como o workspace aberto,
deve ficar fora do Git:

```gitignore
.obsidian/workspace.json
.obsidian/workspace-mobile.json
```

Nao remover configuracoes compartilhadas e nem adicionar plugins comunitarios
sem uma necessidade clara da Wiki.

## Scripts de contribuicao

Antes de alterar os scripts, mantenha este contrato:

- Detectar e instalar Git e GitHub CLI.
- Solicitar autenticacao no GitHub.
- Configurar nome e email do Git.
- Criar o fork quando necessario.
- Atualizar `main` a partir de `upstream`.
- Criar ou recuperar `contribuicoes/<usuario>`.
- Atualizar essa branch antes da edicao.
- Instalar o Obsidian quando a plataforma suportar.
- Abrir o Obsidian na raiz do projeto.
- Mostrar apenas alteracoes relevantes em `docs/` e `static/`.
- Criar commit somente apos confirmacao.
- Fazer push para o fork.
- Criar um PR ou atualizar o PR existente.

Os scripts devem ser seguros para iniciantes:

- Nao descartam alteracoes locais.
- Nao fazem `reset --hard`.
- Nao sobrescrevem a branch `main`.
- Nao devem aceitar ou resolver conflitos automaticamente.
- Param no erro e informam o proximo passo.
- Nunca enviam `build/`, `node_modules/` ou arquivos gerados.

Mudancas nos scripts exigem validacao nos dois sistemas ou por uma
representacao coerente de cada linha critica:

```bash
bash -n scripts/contribute.sh
```

Os comandos Windows do `contribute.bat` nao podem usar sintaxe exclusiva de Bash.

## Build e publicacao

Comandos locais:

```bash
npm ci
npm run start
npm run build
npm run typecheck
```

Antes de entregar uma alteracao em arquivos de codigo ou configuracao:

```bash
npm ci
npm run build
npm run typecheck
```

Uma alteracao apenas em Markdown deve ter pelo menos o `npm run build`
executado quando o ambiente estiver disponivel.

O workflow [.github/workflows/deploy-pages.yml](.github/workflows/deploy-pages.yml)
executa automaticamente em todo push para `main`:

1. Checkout do repositorio.
2. Node.js 20.
3. `npm ci`.
4. `npm run build`.
5. Upload do diretorio `build`.
6. Deploy para o ambiente `github-pages`.

O Pages deve usar **Source: GitHub Actions** em Settings do repositorio.
Nao use `npm run deploy` para o fluxo normal de contribuicao.

## Checklist antes do envio

Antes de finalizar uma ajuda ou alterar arquivos:

- Confirme que a pagina pertence a `docs/`.
- Preserve links relativos e frontmatter.
- Nao altere `build/` ou `node_modules/`.
- Verifique imagens e PDFs referenciados.
- Execute o menor build ou typecheck relevante.
- Revise o diff para evitar alteracoes geradas.
- Confirme que os scripts continuam criando um unico PR por branch pessoal.
- Confirme que nenhuma configuracao pessoal do Obsidian sera enviada.
- Antes de publicar ou converter material externo, confirme origem,
  autorizacao e direitos autorais. Nao envie slides ou listas brutas de
  professores sem permissao; resolucoes originais dos alunos podem ser
  publicadas sem copiar enunciados protegidos.
- Resuma o que mudou e qual validacao foi realizada.

## Fluxo final

Para alterar conteudo, o modelo deve:

1. Identificar o arquivo correto em `docs/` ou `static/`.
2. Ler o arquivo e a documentacao relacionada.
3. Fazer uma alteracao pequena e coerente.
4. Preservar estrutura, links e frontmatter.
5. Validar com o build.
6. Informar o usuario que ele pode enviar pela execucao do script.

Nao execute Git automaticamente em nome do usuario a menos que ele tenha
pedido expressamente e compreendido o fluxo. O colaborador humano continua
responsavel por revisar e confirmar o PR.
