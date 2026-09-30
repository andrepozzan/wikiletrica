import type { ReactNode } from "react";
import clsx from "clsx";
import useBaseUrl from "@docusaurus/useBaseUrl";
import Heading from "@theme/Heading";
import styles from "./styles.module.css";

type FeatureItem = {
  title: string;
  icon: string;
  description: ReactNode;
};

const FeatureList: FeatureItem[] = [
  {
    title: "Simulações e Laboratório",
    icon: "/bolt.svg",
    description: (
      <>
        Acesse roteiros detalhados, esquemáticos e arquivos prontos
        para rodar no
        <b> LTspice</b> e <b>Cadence Virtuoso</b>. Chegue na bancada
        preparado para extrair o máximo do osciloscópio.
      </>
    ),
  },
  {
    title: "Matemática em LaTeX",
    icon: "/logo-yellow.svg",
    description: (
      <>
        Todas as demonstrações, análises de pequenos sinais e tabelas
        de estabilidade renderizadas perfeitamente de forma nativa.
        Diga adeus aos PDFs ilegíveis de fotos de quadro.
      </>
    ),
  },
  {
    title: "Sistemas e Projetos",
    icon: "/thunder-skull-svgrepo-com.svg",
    description: (
      <>
        Compartilhe implementações em C/Python, bibliotecas para{" "}
        <b>ESP32 e STM32</b>, e referências para relatórios de
        Iniciação Científica de forma colaborativa.
      </>
    ),
  },
];

function Feature({ title, icon, description }: FeatureItem) {
  const iconUrl = useBaseUrl(icon);
  return (
    <div className={clsx("col col--4", styles.featureColumn)}>
      <div className={styles.iconFrame}>
        <img
          className={styles.featureSvg}
          src={iconUrl}
          alt=""
          aria-hidden="true"
        />
      </div>
      <div className={styles.featureCopy}>
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures(): ReactNode {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
