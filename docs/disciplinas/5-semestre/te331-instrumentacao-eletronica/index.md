---
id: te331-instrumentacao-eletronica
title: TE331 - Instrumentação Eletrônica
tags:
  - instrumentacao
  - conversores-ad
  - sensores
  - comunicacao-industrial
---

# TE331 - Instrumentação Eletrônica

**Semestre:** 5º Semestre  
**Carga horária:** 60 h  
**Departamento:** Engenharia Elétrica - UFPR  

---

## 📚 Visão Geral da Disciplina

Instrumentação Eletrônica estuda os princípios físicos dos transdutores e sensores (temperatura, pressão, deformação, deslocamento), o processamento analógico e digital de sinais com técnicas de cancelamento de ruído, a arquitetura e quantização de conversores A/D e D/A, e os padrões industriais de comunicação de dados e instrumentação de bancada.

```mermaid
flowchart LR
    A["1. Sensores e Transdutores<br/>RTD, Termopares, Strain Gauges"] --> B["2. Condicionamento de Sinal<br/>Ponte de Wheatstone, SNR, Média Móvel"]
    B --> C["3. Conversores A/D e D/A<br/>Flash, Rampa Dupla, SAR e Sigma-Delta"]
    C --> D["4. Comunicação Industrial e Bancada<br/>RS-232/485, USB, LoRa, DMM e Osciloscópios DSO"]
```

---

## 📑 Principais Tópicos Teóricos

### 1. Processamento Estatístico e Redução de Ruído
* **Precisão vs. Exatidão:** A média aritmética de $N$ amostras reduz a variância do ruído aleatório gaussiano, elevando a relação sinal-ruído ($\text{SNR}$):
  $$
  \text{SNR}_{\text{ganho}} = 10 \log_{10}(N) \quad [\text{dB}]
  $$
  enquanto a **exatidão** depende estritamente da calibração metrológica contra um padrão rastreável.
* **Média Móvel:** Opera como um filtro digital passa-baixas sem distorcer o valor médio contínuo.
* **Sobre-amostragem (*Oversampling*):** Amostrar muito acima da taxa de Nyquist ($f_s \gg 2f_{\max}$) distribui o ruído de quantização em uma faixa de frequência maior; a filtragem digital e decimação subsequentes recuperam resolução efetiva (ganho em bits de resolução ENOB).

---

### 2. Conversores A/D (Analógico-Digital)

| Tipo de Conversor A/D | Velocidade de Conversão | Resolução Típica | Aplicações Típicas |
| :--- | :--- | :--- | :--- |
| **Flash (Paralelo)** | Ultrarrápida ($> 1\text{ GSPS}$) | Baixa/Média ($6 - 8\text{ bits}$) | Osciloscópios digitais (DSO), radares |
| **Aproximações Sucessivas (SAR)** | Rápida ($100\text{ kSPS} - 5\text{ MSPS}$) | Média/Alta ($10 - 18\text{ bits}$) | Microcontroladores (ESP32, STM32, PIC) |
| **Rampa Dupla (Dupla Integração)** | Lenta (~10 a 50 conversões/s) | Altíssima ($> 16 - 24\text{ bits}$) | Multímetros digitais de bancada (DMM) |
| **Sigma-Delta ($\Sigma\Delta$)** | Baixa/Média com oversampling | Altíssima ($16 - 24\text{ bits}$) | Áudio digital, sensores de precisão, balanças |

---

### 3. Interfaces de Comunicação em Instrumentação

```mermaid
flowchart TD
    A["Padrões de Comunicação Serial"] --> B["RS-232: Linha Simples Não Balanceada<br/>(Ponto a ponto, curtas distâncias < 15m)"]
    A --> C["RS-485: Linha Diferencial Balanceada (A e B)<br/>(Altíssima imunidade a ruídos industriais, até 1200m e 32 nós multiponto)"]
    A --> D["USB: Diferencial half-duplex com codificação NRZI"]
    A --> E["LoRa: Modulação Chirp Spread Spectrum (CSS)<br/>(Longo alcance em km com baixíssimo consumo de bateria)"]
```

---

### 4. Instrumentos Digitais de Medição
* **Multímetro Digital (DMM):** Converte grandezas alternadas (tensão/corrente CA) em CC via conversor *True RMS* antes do estágio do conversor A/D de rampa dupla.
* **Osciloscópio Digital (DSO):** O sinal analógico de entrada passa pelo circuito atenuador de alta frequência, é digitalizado pelo conversor Flash, armazenado na memória de aquisição circular de alta velocidade e só então renderizado na tela.
* **Analisador de Espectro:**
  * **Por Varredura (Super-heteródino):** Varia a frequência do oscilador local com filtro de frequência intermediária (IF) estreito e fixo.
  * **Por FFT:** Adquire os dados no domínio do tempo e processa a transformada rápida de Fourier, com resolução em frequência dada por $R_f = \frac{f_s}{N}$.
