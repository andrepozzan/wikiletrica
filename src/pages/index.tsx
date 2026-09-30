import type { ReactNode } from "react";
import clsx from "clsx";
import Link from "@docusaurus/Link";
import useBaseUrl from "@docusaurus/useBaseUrl";
import useDocusaurusContext from "@docusaurus/useDocusaurusContext";
import Layout from "@theme/Layout";
import HomepageFeatures from "@site/src/components/HomepageFeatures";
import Heading from "@theme/Heading";

import styles from "./index.module.css";

function HomepageHeader() {
  const { siteConfig } = useDocusaurusContext();
  const logoUrl = useBaseUrl("/logo.png");
  const yellowLogoUrl = useBaseUrl("/logo-yellow.svg");
  return (
    <header className={styles.heroBanner}>
      <div className={clsx("container", styles.heroContent)}>
        <div className={styles.heroCopy}>
          <p className={styles.kicker}>
            Engenharia elétrica • conhecimento em alta tensão
          </p>
          {/* <img
            className={styles.logo}
            src={logoUrl}
            alt="Wikilétrica"
          /> */}
          <Heading as="h1" className={styles.heroTitle}>
            Conecte. Crie. <span>Eletrifique.</span>
          </Heading>
          <p className={styles.heroSubtitle}>
            A base colaborativa para transformar teoria, bancada e
            projetos em conhecimento compartilhado.
          </p>
          <div className={styles.buttons}>
            <Link
              className={styles.primaryButton}
              to="/docs/category/disciplinas-do-curso"
            >
              <span>Acessar as disciplinas</span>
              <span aria-hidden="true">↗</span>
            </Link>
            <Link
              className={styles.secondaryButton}
              to="/docs/materiais"
            >
              Explorar materiais
            </Link>
          </div>
        </div>
        <div className={styles.heroVisual}>
          <img
            className={styles.heroMark}
            src={yellowLogoUrl}
            alt="Logo Wikilétrica"
          />
        </div>
      </div>
      <div className={styles.heroBottomLine} aria-hidden="true">
        <span>WIKI + ELÉTRICA</span>
        <span>⚡</span>
        <span>UFPR • ENGENHARIA ELÉTRICA</span>
      </div>
    </header>
  );
}

export default function Home(): ReactNode {
  const { siteConfig } = useDocusaurusContext();
  return (
    <Layout
      title={`Início`}
      description="Base de conhecimento colaborativa do curso de Engenharia Elétrica."
    >
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
    </Layout>
  );
}
