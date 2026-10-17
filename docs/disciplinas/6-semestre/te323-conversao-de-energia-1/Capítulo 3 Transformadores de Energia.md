---
id: te323-transformadores-fundamentos
title: 3. Transformadores - Fundamentos e Modelagem
tags:
  - transformadores
  - conversao-de-energia
---

# Capítulo 3: Transformadores de Energia — Fundamentos e Modelagem

O transformador é um dispositivo eletromagnético estático constituído por dois ou mais enrolamentos acoplados através de um circuito magnético comum. Sua finalidade principal é transferir potência elétrica em corrente alternada entre níveis de tensão e corrente distintos com alta eficiência, mantendo a frequência inalterada e garantindo isolação galvânica.

---

## 1. Funções e Princípios Básicos

As aplicações primordiais dos transformadores no sistema elétrico incluem:
1. **Elevação ou rebaixamento de níveis de tensão e corrente**, otimizando a transmissão de potência (reduzindo perdas $I^2 R$ em longas distâncias) e adequando os níveis para a distribuição e consumo seguro.
2. **Isolação galvânica** entre circuitos elétricos distintos, impedindo correntes contínuas de fuga e ruídos comuns de terra.
3. **Casamento de impedâncias** para máxima transferência de potência ou condicionamento de sinais.

---

## 2. O Transformador Ideal

Um transformador ideal apresenta as seguintes premissas simplificadoras:
* Núcleo com permeabilidade magnética infinita ($\mu_r \to \infty$), resultando em relutância nula ($\mathcal{R}_{\text{núcleo}} \to 0$) e corrente de excitação nula ($i_{\phi} \to 0$).
* Perdas no ferro inexistentes (sem histerese nem correntes parasitas de Foucault).
* Resistência dos condutores de enrolamento nula ($R_1 = R_2 = 0$).
* Dispersão de fluxo magnético nula (todo o fluxo é confinado estritamente ao núcleo, $\phi_{d1} = \phi_{d2} = 0$).

![Esquema do Transformador Ideal](../../../../static/anexos/Pasted%20image%2020260929215008.png)

### 2.1 Relações de Tensão e Relação de Espiras ($a$)
Se um fluxo mútuo alternado senoidal $\phi(t) = \phi_{\max} \operatorname{sen}(\omega t)$ atravessa as $N_1$ espiras do primário e as $N_2$ espiras do secundário:

$$
v_1(t) = e_1(t) = N_1 \frac{d\phi}{dt} = N_1 \omega \phi_{\max} \cos(\omega t)
$$

$$
v_2(t) = e_2(t) = N_2 \frac{d\phi}{dt} = N_2 \omega \phi_{\max} \cos(\omega t)
$$

Definindo a **relação de transformação** (relação de espiras $a$):

$$
a = \frac{N_1}{N_2} = \frac{V_1}{V_2} = \frac{E_1}{E_2}
$$

### 2.2 Equação Geral da Tensão Induzida Eficaz
O valor eficaz da f.e.m. induzida em qualquer enrolamento de $N$ espiras submetido a uma frequência senoidal $f$ com fluxo de pico $\phi_{\max}$ é deduzido como:

$$
E_{\text{rms}} = \frac{E_{\max}}{\sqrt{2}} = \frac{N \omega \phi_{\max}}{\sqrt{2}} = \frac{2\pi f N \phi_{\max}}{\sqrt{2}} = \sqrt{2}\pi \cdot f \cdot N \cdot \phi_{\max}
$$

Como $\sqrt{2}\pi \approx 4{,}44288$:

$$
V_{\text{rms}} = 4{,}44 \cdot f \cdot N \cdot \phi_{\max} = 4{,}44 \cdot f \cdot N \cdot B_{\max} \cdot A_{\text{núcleo}}
$$

Isolando a f.e.m. por espira ($e_{\text{espira}}$):

$$
e_{\text{espira}} = \frac{V}{N} = 4{,}44 \cdot f \cdot B_{\max} \cdot A_{\text{núcleo}} \quad [\text{V/espira}]
$$

---

### 2.3 Relação de Correntes e Balanço de FMM
Em um núcleo ideal de relutância zero, a força magnetomotriz líquida resultante deve ser nula:

$$
\mathcal{F}_{\text{res}} = N_1 i_1 - N_2 i_2 = 0 \implies N_1 i_1 = N_2 i_2
$$

Logo, a relação entre as correntes nominais é o inverso da relação de espiras:

$$
\frac{I_1}{I_2} = \frac{N_2}{N_1} = \frac{1}{a} \implies I_1 = \frac{I_2}{a}
$$

### 2.4 Conservação de Potência e Reflexão de Impedâncias
A potência complexa aparente de entrada é integralmente transferida para a saída no transformador ideal:

$$
S_1 = V_1 I_1^* = (a V_2) \left(\frac{I_2}{a}\right)^* = V_2 I_2^* = S_2
$$

Conectando-se uma carga de impedância $Z_L = \frac{V_2}{I_2}$ ao secundário, a impedância equivalente vista da entrada do enrolamento primário ($Z_1$ ou $Z_{L}'$) é:

$$
Z_{1} = \frac{V_1}{I_1} = \frac{a V_2}{\frac{I_2}{a}} = a^2 \left(\frac{V_2}{I_2}\right) = a^2 \cdot Z_L
$$

> [!TIP] Regra de Ouro da Reflexão de Impedâncias:
> * Ao refletir uma impedância do **secundário para o primário** (lado de alta/baixa proporcional a $a$): multiplica-se por $a^2$: $Z_2' = a^2 Z_2$.
> * Ao refletir do **primário para o secundário**: divide-se por $a^2$: $Z_1' = \frac{Z_1}{a^2}$.

---

## 3. O Transformador Real e Fenômenos Físicos

Em transformadores práticos, quatro fenômenos desviam o comportamento do modelo ideal:

1. **Perdas nos Enrolamentos (Efeito Joule):** Os fios de cobre possuem resistência ôhmica finita, modelada pelas resistências concentradas $R_1$ (primário) e $R_2$ (secundário).
2. **Fluxo de Dispersão:** Nem todas as linhas de fluxo concatenam os dois enrolamentos simultaneamente. O fluxo que se fecha pelo ar/isolantes é modelado por reatâncias de dispersão $X_1$ e $X_2$.
3. **Corrente de Excitação / Ramo Magnetizante ($I_\phi$):** Mesmo a vazio (sem carga), o transformador drena uma corrente do primário composta por duas parcelas:
   * **Corrente de Magnetização ($I_m$):** Cria o fluxo no núcleo de ferro (reativa pura, modelada em paralelo por $X_m$).
   * **Corrente de Perdas no Núcleo ($I_c$ ou $I_{Fe}$):** Modela a dissipação ativa de potência por **histerese** e **correntes induzidas parasitas (Foucault)**, representada por uma resistência em paralelo $R_c$.

$$
\vec{I}_\phi = \vec{I}_c + \vec{I}_m
$$

---

## 4. Circuito Equivalente do Transformador Real

O modelo elétrico clássico em regime permanente senoidal representa os elementos físicos por parâmetros concentrados:

![Circuito Equivalente com Trafo Ideal](../../../../static/anexos/Pasted%20image%2020260930020041.png)

### 4.1 Circuito Equivalente Referido ao Primário
Ao eliminar o transformador ideal e referir todas as variáveis do secundário ao lado 1:
* $V_2' = a V_2$
* $I_2' = \frac{I_2}{a}$
* $R_2' = a^2 R_2$
* $X_2' = a^2 X_2$
* $Z_L' = a^2 Z_L$

![Circuito Equivalente Referido](../../../../static/anexos/Pasted%20image%2020260930020339.png)

### 4.2 Circuito Equivalente Aproximado (T e L)
Como a corrente de excitação $I_\phi$ costuma ser muito pequena em transformadores de potência (tipicamente $1\%$ a $5\%$ da nominal), o erro ao transferir o ramo paralelo ($R_c \parallel jX_m$) diretamente para os terminais de entrada é desprezível.

Com isso, as impedâncias em série podem ser consolidadas:

$$
R_{eq1} = R_1 + R_2' = R_1 + a^2 R_2
$$

$$
X_{eq1} = X_1 + X_2' = X_1 + a^2 X_2
$$

$$
Z_{eq1} = R_{eq1} + j X_{eq1}
$$

Referindo equivalentemente ao lado do secundário:

$$
R_{eq2} = R_2 + \frac{R_1}{a^2} = \frac{R_{eq1}}{a^2}
$$

$$
X_{eq2} = X_2 + \frac{X_1}{a^2} = \frac{X_{eq1}}{a^2}
$$

---

## 5. Equacionamento Fasorial de Tensões no Transformador Real

![Equacionamento de Queda no Trafo](../../../../static/anexos/Pasted%20image%2020260930024700.png)

1. **Circuito Secundário:**
   A fem induzida interna $e_2$ deve suprir a tensão nos terminais da carga mais as quedas de impedância interna:
   $$
   \dot{E}_2 = \dot{V}_2 + \dot{I}_2 (R_2 + jX_2)
   $$
2. **Conversão pelo Acoplamento Ideal:**
   $$
   \dot{E}_1 = a \dot{E}_2
   $$
3. **Circuito Primário:**
   A tensão suprida pela fonte $\dot{V}_1$ precisa vencer a fem induzida interna mais as quedas em $R_1$ e $X_1$:
   $$
   \dot{V}_1 = \dot{E}_1 + \dot{I}_1 (R_1 + jX_1)
   $$
