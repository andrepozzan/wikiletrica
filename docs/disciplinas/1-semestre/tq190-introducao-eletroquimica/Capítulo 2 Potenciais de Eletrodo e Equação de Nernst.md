---
id: tq190-potenciais-eletrodo-nernst
title: 2. Potenciais de Eletrodo e Equação de Nernst
tags:
  - eletroquimica
  - nernst
  - celulas-galvanicas
---

# Capítulo 2: Potenciais de Eletrodo, Células Galvânicas e Equação de Nernst

A conversão direta de energia química em energia elétrica em pilhas e baterias baseia-se na separação física das semi-reações de oxidação e redução em dois eletrodos condutores conectados por um circuito elétrico externo.

---

## 1. Células Eletroquímicas: Galvânicas vs. Eletrolíticas

| Característica | Célula Galvânica (Pilha / Bateria em Descarga) | Célula Eletrolítica (Eletrólise / Bateria em Carga) |
| :--- | :--- | :--- |
| **Espontaneidade** | Espontânea ($\Delta G < 0$, $E_{\text{cél}} > 0$) | Não-espontânea ($\Delta G > 0$, requer fonte externa) |
| **Conversão** | Energia Química $\longrightarrow$ Energia Elétrica | Energia Elétrica $\longrightarrow$ Energia Química |
| **Ânodo** | Polo **Negativo** (onde ocorre a Oxidação) | Polo **Positivo** (onde ocorre a Oxidação) |
| **Cátodo** | Polo **Positivo** (onde ocorre a Redução) | Polo **Negativo** (onde ocorre a Redução) |

> [!TIP] Mnemônica Universal (Ânodo vs. Cátodo):
> Em qualquer tipo de célula (galvânica ou eletrolítica):
> * **Vogal com Vogal:** **A**noid $\longrightarrow$ **O**xidação.
> * **Consoante com Consoante:** **C**átodo $\longrightarrow$ **R**edução.

---

## 2. Eletrodos de Referência

Como não é possível medir o potencial elétrico absoluto de uma única semi-reação isolada, define-se um padrão arbitrário de referência universal:

### 2.1 Eletrodo Padrão de Hidrogênio (SHE - *Standard Hydrogen Electrode*)
* **Definição:** Uma lâmina de platina platinizada imersa em solução aquosa de íons $\text{H}^+$ com atividade unitária ($[\text{H}^+] = 1\text{ mol/L}$), borbulhada com gás hidrogênio a $1\text{ bar}$ e $25^\circ\text{C}$ ($298\text{ K}$).
* **Convenção de Potencial:**
  $$
  2\text{H}^+_{(aq)} + 2e^- \rightleftharpoons \text{H}_{2(g)} \quad E^0 \equiv 0{,}000\text{ V}
  $$

### 2.2 Eletrodos de Referência Secundários Práticos de Campo
Na prática laboratorial e industrial (medição de corrosão e campo), o SHE é inviável por exigir gás hidrogênio comprimido inflamável. Empregam-se:
1. **Eletrodo de Prata / Cloreto de Prata ($\text{Ag/AgCl}$):**
   $$
   \text{AgCl}_{(s)} + e^- \rightleftharpoons \text{Ag}_{(s)} + \text{Cl}^-_{(aq)} \quad E^0 \approx +0{,}222\text{ V vs. SHE (em KCl 1M)}
   $$
2. **Eletrodo de Cobre / Sulfato de Cobre ($\text{Cu/CuSO}_4$):**
   Amplamente utilizado em testes de corrosão e proteção catódica de tubulações e estruturas enterradas:
   $$
   \text{Cu}^{2+}_{(aq)} + 2e^- \rightleftharpoons \text{Cu}_{(s)} \quad E^0 \approx +0{,}318\text{ V vs. SHE}
   $$

---

## 3. Força Eletromotriz Padrão da Célula ($E^0_{\text{cél}}$)

A d.d.p. em circuito aberto em condições padrão ($1\text{ atm}$, $25^\circ\text{C}$, concentrações de $1\text{ mol/L}$) é:

$$
E^0_{\text{cél}} = E^0_{\text{cátodo (redução)}} - E^0_{\text{ânodo (redução)}}
$$

* Se $E^0_{\text{cél}} > 0$: o processo é **espontâneo**, pois a variação de energia livre de Gibbs é negativa:
  $$
  \Delta G^0 = -n \cdot F \cdot E^0_{\text{cél}}
  $$
  onde $F = 96485\text{ C/mol}$ é a **Constante de Faraday** e $n$ é o número de elétrons transferidos.

---

## 4. A Equação de Nernst: Efeito da Concentração e Temperatura

Em condições reais (fora das concentrações unitárias de $1\text{ mol/L}$ e à medida que a bateria se descarrega), o potencial real da célula varia conforme a **Equação de Nernst**:

$$
E = E^0 - \frac{R \cdot T}{n \cdot F} \ln Q
$$

onde:
* $R = 8{,}314\text{ J/(mol}\cdot\text{K)}$ (Constante universal dos gases).
* $T$ é a temperatura absoluta em Kelvin.
* $Q$ é o quociente de reação:
  $$
  Q = \frac{\prod [\text{Produtos}]^{p}}{\prod [\text{Reagentes}]^{r}}
  $$

Para a temperatura ambiente de referência $25^\circ\text{C}$ ($298{,}15\text{ K}$) convertendo para base logarítmica decimal ($\log_{10}$):

$$
\frac{R T}{F} \ln(10) \approx 0{,}05916\text{ V} \approx 0{,}0592\text{ V}
$$

$$
E = E^0 - \frac{0{,}0592}{n} \log_{10} Q
$$

> [!IMPORTANT] Estado de Equilíbrio (Bateria Esgotada):
> Quando a pilha descarrega completamente até o equilíbrio eletroquímico, a corrente cessa e a d.d.p. útil torna-se nula ($E = 0$). Nesse ponto, $Q = K_{\text{eq}}$:
> $$
> E^0 = \frac{0{,}0592}{n} \log_{10} K_{\text{eq}}
> $$
