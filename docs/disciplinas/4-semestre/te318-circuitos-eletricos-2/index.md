---
id: te318-circuitos-eletricos-2
title: TE318 - Circuitos Elétricos II
tags:
  - circuitos-eletricos
  - fasores
  - trifasico
  - ressonancia
---

# TE318 - Circuitos Elétricos II

**Semestre:** 4º Semestre  
**Carga horária:** 60 h  
**Departamento:** Engenharia Elétrica - UFPR  

---

## 📚 Visão Geral da Disciplina

Circuitos Elétricos II cobre a análise em regime permanente senoidal (RPS) utilizando fasores e impedâncias complexas, cálculo de potências ativas, reativas e aparentes com correção de fator de potência, ressonância série e paralela, circuitos magneticamente acoplados e sistemas trifásicos equilibrados e desequilibrados ($Y$ e $\Delta$).

```mermaid
flowchart TD
    C1["1. Fasores e Impedância Complexa<br/>R = R, ZL = jωL, ZC = 1/(jωC)"]
    C2["2. Potência em Corrente Alternada<br/>P (W), Q (var), S (VA) e Fator de Potência (cos φ)"]
    C3["3. Ressonância e Filtros RLC<br/>Frequência de Ressonância ω₀ e Fator de Qualidade Q"]
    C4["4. Circuitos com Acoplamento Mútuo<br/>Indutância Mútua M e Regra dos Pontos"]
    C5["5. Sistemas Trifásicos (Y e Δ)<br/>Tensões de Linha e Fase, Cargas Equilibradas e Potência Trifásica"]

    C1 --> C2 --> C3 --> C4 --> C5
```

---

## 📑 Principais Tópicos Teóricos

### 1. Triângulo de Potências em CA
* **Potência Aparente Complexa:**
  $$
  S = P + jQ = \vec{V}_{\text{rms}} \cdot \vec{I}_{\text{rms}}^* = |S| \angle \theta
  $$
* **Potência Ativa (Watts):** $P = V_{\text{rms}} I_{\text{rms}} \cos\theta$.
* **Potência Reativa (var):** $Q = V_{\text{rms}} I_{\text{rms}} \operatorname{sen}\theta$.
* **Fator de Potência:** $FP = \cos\theta = \frac{P}{|S|}$.

### 2. Sistemas Trifásicos Equilibrados
* **Ligação Estrela ($Y$):** $V_L = \sqrt{3} V_F \angle +30^\circ$, $I_L = I_F$.
* **Ligação Triângulo ($\Delta$):** $V_L = V_F$, $I_L = \sqrt{3} I_F \angle -30^\circ$.
* **Potência Trifásica Total:**
  $$
  S_{3\phi} = \sqrt{3} V_L I_L \quad [\text{VA}]
  $$
  $$
  P_{3\phi} = \sqrt{3} V_L I_L \cos\theta \quad [\text{W}]
  $$
