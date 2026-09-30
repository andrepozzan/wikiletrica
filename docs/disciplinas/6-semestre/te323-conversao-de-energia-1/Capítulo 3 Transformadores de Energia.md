---
tags:
  - transformadores
---

O estudo de transformadores permite compreender
como a energia elétrica pode ser transportada de um
circuito elétrico a outro através do acoplamento de um
campo magnético variável no tempo, estando os dois
circuitos isolados eletricamente.
Além de transferir energia, esse dispositivo permite
transformar (abaixar ou elevar) tensões, correntes e
impedâncias.

Dentre as principais funções de um
transformador podemos listar:

-  Isolar eletricamente dois circuitos;

- Ajustar a tensão de saída de um estágio
do sistema para à tensão de entrada do
seguinte.

- Ajustar a impedância do estágio seguinte
à impedância do estágio anterior
(casamento de impedâncias).

### Equações

$$
V_{rms} = \phi_{máx} \cdot N \cdot f \cdot 4,44 
$$
$$
\lambda_1 = N_1 \phi
$$


### Transformador ideal

![](../../../../static/anexos/Pasted%20image%2020260929215008.png)

$$
e_p = \omega \cdot L \cdot i \cdot sen(\omega t - \pi)
$$



### Relação de transformação

$$
\frac{e_1}{e_2} = \frac{v_1}{v_2} = \frac{N_1}{N_2} = a
$$
$a$ é a relação de espiras.

### Transformador com carga
$$
i_c = \frac{e_2}{Z_c}
$$
Essa corrente $i_c = -i_2$ produzirá uma força magnetomotriz f.m.m. $\mathcal{F}_c$ dada por:

$$
\mathcal{F}_c = N_2 i_2 = \phi_1 \mathfrak{R}_{núcleo}
$$


### Impedância de entrada

A partir da relação entre tensão e corrente primária
$$
Z_{c1} = \frac{V_1}{I_1}
$$

A partir da relação de transformação
$$
Z_{c1} = Z_c \cdot a^2
$$

### Potencia elétrica
Se calcularmos as potências elétricas de primário e secundário,
teremos:
$$
p_1 = v_1 \cdot i_1
$$
$$
p_2 = v_2 \cdot i_2 = \frac{v_1}{a}(i_1 \cdot -a) = -p_1
$$

$$
S = I_{rms}^2 \cdot Z_L
$$
$$
S = V_{rms} \cdot I_{rms}
$$


### Transformador Ideal em Regime Permanente Senoidal

Quando uma tensão senoidal de frequência angular $\omega$, igual a:

$$
\omega = 2\pi f
$$

*(sendo $f$ a frequência em Hz)* é aplicada ao enrolamento primário de um transformador e o enrolamento secundário é mantido em circuito aberto, a tensão primária é balanceada por uma f.e.m., induzida pela taxa de variação do fluxo concatenado com o enrolamento primário, $\lambda_1$, dado por:

$$
\lambda_1 = N_1 \phi
$$

Sendo $\phi$ o fluxo no núcleo do transformador, que também possuirá variação temporal senoidal, como segue:

$$
\phi = \phi_{\max} \operatorname{sen}(\omega t)
$$

Dessa maneira, a tensão primária se escreve como:

$$
v_1 = e_1 = N_1 \frac{d\phi}{dt} = N_1 \omega \phi_{\max} \cos(\omega t)
$$

Cujos valores máximo (ou de pico) e eficaz (ou r.m.s.) valem:

$$
e_{\max} = N_1 \omega \phi_{\max}
$$

$$
E_{rms} = \frac{1}{\sqrt{2}} N_1 2\pi f \phi_{\max}
$$

Ou ainda:

$$
E_{rms} = 4{,}44 N_1 f \phi_{\max}
$$

