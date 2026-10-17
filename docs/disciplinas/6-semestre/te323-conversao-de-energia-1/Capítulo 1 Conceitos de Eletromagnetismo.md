---
id: te323-conceitos-eletromagnetismo
title: 1. Conceitos de Eletromagnetismo
tags:
  - conversao-de-energia
  - eletromagnetismo
---

# Capítulo 1: Conceitos Fundamentais de Eletromagnetismo

Este capítulo estabelece as bases físicas necessárias para a análise dos circuitos magnéticos, transformadores e máquinas elétricas. Em sistemas de conversão eletromecânica e eletromagnética de energia, o campo magnético atua como o meio de acoplamento primário para transferência e conversão de potência.

---

## 1. Grandezas Magnéticas Fundamentais

### 1.1 Campo Magnético ($H$) e Densidade de Fluxo ($B$)
* **Intensidade de Campo Magnético ($H$):** Medida da intensidade da fonte magnetizante gerada por correntes elétricas. Sua unidade no SI é **Ampère-espira por metro** ($\text{A}\cdot\text{e/m}$ ou $\text{A/m}$).
* **Densidade de Fluxo Magnético ou Indução Magnética ($B$):** Quantifica a concentração de linhas de indução por unidade de área perpendicular. Sua unidade é o **Tesla** ($\text{T}$), equivalente a $\text{Wb/m}^2$.

A relação constitutiva entre $B$ e $H$ em um meio homogêneo e isotrópico é expressa por:

$$
B = \mu H
$$

onde $\mu$ é a **permeabilidade magnética** do material:

$$
\mu = \mu_r \mu_0
$$

* $\mu_0 = 4\pi \times 10^{-7} \text{ H/m}$ (ou $\text{T}\cdot\text{m/A}$) é a permeabilidade magnética do vácuo.
* $\mu_r$ é a **permeabilidade magnética relativa** do meio (adimensional). Para materiais ferromagnéticos (ferro, aço-silício), $\mu_r$ assume valores elevados (de $10^2$ a $10^5$), confinando o fluxo quase que integralmente no núcleo.

---

### 1.2 Fluxo Magnético ($\phi$) e Fluxo Concatenado ($\lambda$)
O fluxo magnético $\phi$ que atravessa uma superfície plana de área transversal $A$ uniforme e normal às linhas de campo é dado por:

$$
\phi = \int_A \vec{B} \cdot d\vec{A} = B \cdot A \quad [\text{Wb}]
$$

Quando este fluxo magnético atravessa uma bobina com $N$ espiras (assumindo acoplamento mútuo perfeito sem dispersão), define-se o **fluxo concatenado** ou **enlaçado** ($\lambda$):

$$
\lambda = N \phi \quad [\text{Wb}\cdot\text{espira}]
$$

---

## 2. Leis Fundamentais do Eletromagnetismo

### 2.1 Lei Circuital de Ampère
A circulação do vetor campo magnético $\vec{H}$ ao longo de um caminho fechado $C$ é igual à corrente líquida total envolvida por esse contorno:

$$
\oint_C \vec{H} \cdot d\vec{l} = I_{\text{envolvida}} = \sum i
$$

Para uma bobina de $N$ espiras conduzindo corrente $i$, a força magnetomotriz ($\mathcal{F}$) estabelecida no caminho fechado de comprimento médio $l_c$ é:

$$
\mathcal{F} = N \cdot i = \oint \vec{H} \cdot d\vec{l} \approx H \cdot l_c \quad [\text{A}\cdot\text{e}]
$$

---

### 2.2 Lei de Faraday-Lenz da Indução Eletromagnética
Qualquer variação temporal do fluxo magnético enlaçado por um circuito condutor induz nele uma força eletromotriz (f.e.m.):

$$
e = -\frac{d\lambda}{dt} = -N \frac{d\phi}{dt} \quad [\text{V}]
$$

* O **sinal negativo** (Lei de Lenz) expressa o princípio de conservação de energia: a corrente induzida gera um campo magnético que se opõe à variação do fluxo magnético original que a produziu.
* Nos circuitos elétricos, muitas vezes adotamos a convenção de receptor ou de terminal onde a f.e.m. induzida interna equilibra a tensão aplicada: $v(t) = e(t) = N\frac{d\phi}{dt}$.

---

## 3. Indutância e Energia Armazenada no Campo Magnético

### 3.1 Indutância Própria ($L$)
A indutância de uma bobina mede a capacidade de concatenar fluxo por unidade de corrente que a percorre:

$$
L = \frac{\lambda}{i} = \frac{N \phi}{i} \quad [\text{H (Henry)}]
$$

Substituindo a expressão do fluxo $\phi = \frac{\mathcal{F}}{\mathcal{R}} = \frac{N i}{\mathcal{R}}$ (onde $\mathcal{R}$ é a relutância magnética vista pela bobina):

$$
L = \frac{N^2}{\mathcal{R}}
$$

> [!NOTE]
> A indutância varia com o quadrado do número de espiras ($N^2$) e é inversamente proporcional à relutância $\mathcal{R}$ do circuito magnético.

---

### 3.2 Energia Magnética Acumulada ($W$)
O trabalho necessário para estabelecer a corrente em um indutor linear ideal (sem perdas) fica armazenado no campo magnético:

$$
W = \int_0^i v \cdot i \, dt = \int_0^i \left(N \frac{d\phi}{dt}\right) i \, dt = \int_0^i L i \, di
$$

$$
W = \frac{1}{2} L I^2 \quad [\text{J}]
$$

Em termos de densidade volumétrica de energia magnética ($w_m = \frac{W}{\text{Volume}}$):

$$
w_m = \frac{1}{2} B H = \frac{1}{2} \frac{B^2}{\mu} \quad [\text{J/m}^3]
$$

Essa expressão da densidade de energia é a chave para a determinação de forças mecânicas e de sustentação em núcleos magnéticos e entreferros.
