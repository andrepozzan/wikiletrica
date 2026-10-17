---
id: cm312-calculo-2
title: CM312 - Cálculo 2
tags:
  - calculo-2
  - derivadas-parciais
  - integrais-multiplas
  - vetorial
---

# CM312 - Cálculo 2

**Semestre:** 3º Semestre  
**Carga horária:** 60 h  
**Departamento:** Matemática - UFPR  

---

## 📚 Visão Geral da Disciplina

Cálculo II estende o cálculo diferencial e integral para funções reais de múltiplas variáveis ($f: \mathbb{R}^n \to \mathbb{R}$ e campos vetoriais $\vec{F}: \mathbb{R}^n \to \mathbb{R}^n$). É a base matemática imediata para Eletromagnetismo, Teoria de Campos e Eletrostática.

```mermaid
flowchart LR
    A["1. Funções de Várias Variáveis<br/>Curvas de Nível e Limites"] --> B["2. Derivadas Parciais<br/>Gradiente, Derivada Direcional e Plano Tangente"]
    B --> C["3. Otimização e Multiplicadores de Lagrange"]
    C --> D["4. Integrais Múltiplas<br/>Duplas, Triplas e Mudança de Coordenadas (Polares, Cilíndricas, Esféricas)"]
```

---

## 📑 Principais Tópicos Teóricos

### 1. Vetor Gradiente e Derivada Direcional
Para uma função diferenciável $f(x, y, z)$:

$$
\nabla f = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right)
$$

* O vetor gradiente aponta sempre na **direção de máximo crescimento** da função.
* A taxa de variação na direção de um versor unitário $\vec{u}$ é a **derivada direcional**:
  $$
  D_{\vec{u}} f = \nabla f \cdot \vec{u} = \|\nabla f\| \cos\theta
  $$
* O gradiente $\nabla f(P)$ é **ortogonal** às curvas/superfícies de nível de $f$.

### 2. Otimização com Restrições (Multiplicadores de Lagrange)
Para maximizar ou minimizar $f(x, y)$ sujeito à restrição $g(x, y) = k$:

$$
\nabla f(x, y) = \lambda \nabla g(x, y)
$$

### 3. Integrais Múltiplas e Mudança de Variáveis (Jacobiano)
* **Coordenadas Polares ($x = r\cos\theta, y = r\operatorname{sen}\theta$):**
  $$
  \iint_R f(x, y) \, dx dy = \iint_{R'} f(r\cos\theta, r\operatorname{sen}\theta) \cdot r \, dr d\theta
  $$
* **Coordenadas Cilíndricas ($dx dy dz \to r \, dr d\theta dz$).**
* **Coordenadas Esféricas ($dx dy dz \to \rho^2 \operatorname{sen}\phi \, d\rho d\phi d\theta$).**
