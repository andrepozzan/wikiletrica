import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import pdfToObject from "./src/remark/pdf-to-object";

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: "Wikilétrica",
  tagline:
    "Base de conhecimento e colaboração do curso de Engenharia Elétrica, Wiki + elétrica = Wikilétrica",
  favicon: "img/favicon.ico",

  url: "https://andrepozzan.github.io",
  baseUrl: "/wikletrica/",

  organizationName: "andrepozzan",
  projectName: "wikletrica",

  onBrokenLinks: "throw",

  // Estrutura atualizada para o Docusaurus v3.10+
  markdown: {
    hooks: {
      onBrokenMarkdownLinks: "warn",
    },
  },

  i18n: {
    defaultLocale: "pt-BR",
    locales: ["pt-BR"],
  },

  presets: [
    [
      "classic",
      /** @type {import('@docusaurus/preset-classic').Options} */
      {
        docs: {
          sidebarPath: "./sidebars.ts",
          editUrl:
            "https://github.com/andrepozzan/wikletrica/tree/main/",
          beforeDefaultRemarkPlugins: [pdfToObject],
          remarkPlugins: [remarkMath],
          rehypePlugins: [rehypeKatex],
        },
        blog: false,
        theme: {
          customCss: "./src/css/custom.css",
        },
      },
    ],
  ],

  themes: [
    [
      require.resolve("@easyops-cn/docusaurus-search-local"),
      {
        hashed: true,
        language: ["pt", "en"],
        indexBlog: false,
        indexPages: true,
        indexDocs: true,
      },
    ],
  ],

  stylesheets: [
    {
      href: "https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css",
      type: "text/css",
      integrity:
        "sha384-n8MVd4RsNIU0tAv4ct0nTaAbDJwPJzDEaqSD1odI+WdtXRGWt2kTvGFasHpSy3SV",
      crossorigin: "anonymous",
    },
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    {
      navbar: {
        title: "Wikilétrica",
        items: [
          {
            type: "docSidebar",
            sidebarId: "tutorialSidebar",
            position: "left",
            label: "Disciplinas",
          },
          {
            href: "https://github.com/andrepozzan/wikletrica",
            label: "GitHub",
            position: "right",
          },
        ],
      },
    },
};

export default config;
