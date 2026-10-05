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

### Projeto de Transformadores

Ponto de Partida do Projeto
Definir requisitos:
-  Tensões: Primária e secundária
-  Potência de saída em VA
-  Frequência (60 Hz)

 Escolha do núcleo:
-  Características do aço
-  Área efetiva (Ae) e janela do núcleo

Critério: evitar saturação magnética.

### Corrente de Magnetização $I_m$ e de Perdas no Ferro $I_c$

Quando aplicamos uma tensão senoidal nos
terminais da bobina do primário, uma
corrente passa a fluir por essa bobina,
mesmo que os terminais do secundário
estejam abertos (em vazio).

Esta corrente é a corrente que vai gerar o
fluxo magnético no núcleo de ferro, como já
sabíamos. O que não sabíamos, é que esta
corrente, na verdade, é constituída por dois
componentes:

1) A corrente de magnetização ($I_m$), requerida para
**produzir fluxo magnético** no núcleo do sistema.

2) A corrente de perdas no ferro ($I_c$), requerida para
caracterizar as **perdas por histerese e correntes**
**parasitas** (eddy current) no núcleo.

A corrente de magnetização é a corrente que
efetivamente vai produzir acoplamento magnético
entre os sistemas elétricos adjacentes. É o que
provoca trabalho.

A corrente de perdas do ferro, como já está dizendo,
é a corrente que apenas produzirá perdas no núcleo,
sem produção de trabalho efetivo.

## Circuito elétrico equivalente

![](../../../../static/anexos/Pasted%20image%2020260930020041.png)

Note que existe um trafo ideal para podermos representar a
passagem da transformação de tensão ou corrente. Este trafo
representa a razão de espiras $a = \frac{N_1}{N_2}$ . Para eliminarmos o trafo
ideal aí embutido, devemos trazer as impedâncias, tensões e
correntes do lado secundário para o lado do primário.

Se lembrarmos da equação $Z_1 = a_2 \cdot Z_2$ . Assim, a impedância, a
tensão e a corrente no lado do secundário do circuito pode ser
transferida para o lado do primário por esta relação. Daí o circuito
equivalente fica conforme a figura a seguir e chamamos isto de
circuito visto pelo lado do primário.

O circuito equivalente pode ser referido também pelo lado do
secundário. Para isto, basta transferir todas as variáveis do primário
para o secundário, usando da mesma forma a relação de impedância
que também pode ser conferido no próximo slide. Neste caso
denominamos circuito visto pelo secundário.

![](../../../../static/anexos/Pasted%20image%2020260930020339.png)


#### Calcular a resistência e a reatância equivalentes referidas à alta e à baixa tensão
$$
Z_{21} = Z_2 \cdot a^2
$$


$$
Z_{12} = \frac{Z_1}{a^2}
$$

$$
R_{eq1} = Z_1 + Z_{21}
$$


$$
R_{eq2} = Z_2 + Z_{12}
$$


$I_1 = \frac{S}{V1}$ e $I_2 = \frac{S}{V2}$
$$
V_{z1} = R_{eq1} \cdot I_1
$$

$$
V_{z2} = R_{eq2} \cdot I_2
$$

$$
\Delta V_1 (\%) = \frac{V_{z1}}{V_1} \cdot 100
$$

$$
\Delta V_2 (\%) = \frac{V_{z2}}{V_2} \cdot 100
$$


### Relação de Tensões no Transformador Real

1. **Lado Secundário (Saída):** 
   A tensão gerada internamente na bobina ($e_2$) é sempre um pouco maior que a tensão entregue à carga ($V_2$), pois precisamos somar a queda de tensão causada pelos fios e reatâncias internas do secundário:
   $$e_2 = V_2 + I_2(R_2 + jX_2)$$

2. **Passagem de Lado (Relação de Transformação):** 
   Para converter a tensão induzida do secundário para o primário, multiplicamos pela relação de espiras/transformação ($a$):
   $$e_1 = e_2 \cdot a$$

3. **Lado Primário (Entrada/Tensão Aplicada):** 
   A tensão que você precisa ligar na tomada ($V_1$) é maior que a tensão gerada na bobina primária ($e_1$), porque é preciso vencer também as perdas e quedas de tensão nos fios do próprio primário:
   $$V_1 = e_1 + I_1(R_1 + jX_1)$$

Exemplo:
![](../../../../static/anexos/Pasted%20image%2020260930024700.png)


## Determinação dos parâmetros de um trafo

Os parâmetros elétricos de um transformador podem ser determinados por dois tipos de ensaios elétricos:
- Ensaio em circuito aberto, onde são determinadas as perdas do núcleo e consequentemente a impedância de magnetização.
- Ensaio de curto circuito: onde se pode determinar as perdas nos enrolamentos e, desta forma a impedância equivalente dos enrolamentos primários e secundários.

### Ensaio de curto-circuito
![](../../../../static/anexos/Pasted%20image%2020260930031800.png)

*   A tensão induzida no secundário pelo fluxo resultante no núcleo iguala a queda de tensão na impedância de dispersão do secundário e na corrente nominal;
*   Como esta tensão é apenas uma parcela reduzida da tensão nominal, o valor de fluxo magnético no núcleo é reduzido e a impedância de excitação, pode então ser omitida;
*   Nestas condições as correntes de primário e secundário são quase iguais quando referidas ao mesmo lado. A potência de entrada pode ser assumida igual a perda total no cobre nos enrolamentos da alta tensão e baixa tensão.

Do ensaio de curto circuito podemos obter os seguintes parâmetros:
*   Perdas no cobre (Pj);
*   Queda de tensão interna ($\Delta V$);
*   Impedância, resistência e reatância percentuais;
*   Resistência equivalente dos enrolamentos e reatância equivalente de dispersão ($\Omega$);

Com os valores obtidos da leitura do amperímetro, voltímetro e wattímetro, podemos escrever:
$Z_{eq} = \frac{V_{cc}}{I_{cc}}$

Daí podemos escrever também:
$R_{eq} = \frac{P_{cc}}{I_{cc}^2}$
e
$X_{eq} = \sqrt{Z_{eq}^2 - R_{eq}^2}$

*   É praticamente impossível desassociar os valores de resistência do primário e secundário, bem como as reatâncias de dispersão referentes a cada enrolamento;
*   Entretanto, se assumirmos que o transformador foi projetado de forma ótima, ou seja as perdas de ambos os lados são iguais: $I_1^2 \cdot R_1 = I_2^2 \cdot R_2$

Assim:
$R_1 = a^2 \cdot R_2$
e
$X_1 = a^2 \cdot X_2$


### Ensaio de circuito aberto, ou a vazio.
![](../../../../static/anexos/Pasted%20image%2020260930031825.png)

*   O ensaio a vazio em transformadores tem como finalidade a determinação de:
    *   Perdas no núcleo ou perdas por histerese e Foucault (P0);
    *   Corrente a vazio (I0);
    *   Relação de transformação (a);
    *   Parâmetros do ramo magnetizante (Rc, Xm e Zm).
*   Como a perda no cobre do primário, provocada pela corrente de excitação, é desprezível, a potência de entrada aproxima-se das perdas no núcleo e a impedância de excitação é igual aproximadamente à impedância de circuito aberto.

Das perdas a vazio e da corrente a vazio, pode-se obter o valor do fator de potencia a vazio:
$P_0 = V \cdot I_0 \cdot \cos\varphi_0$

Como,
$I_0 \cdot \cos\varphi_0 = I_p$

Tem-se:
$I_q = I_0 \cdot \operatorname{sen}\varphi_0$

$I_q$ é a corrente do ramo magnetizante que pode ser também $I_m$

Com os valores das correntes do ramo magnetizante, podemos calcular os valores de resistência e reatância:
$R_c = \frac{V_1}{I_p}$
e
$X_m = \frac{V_1}{I_q}$

## Rendimento e Regulação de tensão

A forma de se descrever o desempenho de um
transformador depende da aplicação para a qual foi
projetado.

Para o caso de sistemas de telecomunicação o importante é
a resposta em frequência do equipamento;

Todavia para transformadores de potencia a mensuração da
regulação e do rendimento é de suma importância.


### Regulação
$$
Reg(\%) = \frac{V_1 - V_2'}{V_1} \cdot 100
$$
Para $V_1 = V_2' + \Delta V$

Sendo, $\Delta V$ a queda de tensão em cima de $Z_{eq}$ e $V_2' = V_2 \cdot a$ tensão do secundário refletida no primário. 


### Rendimento

$$
\eta = \frac{\text{watts de saída}}{\text{watts de entrada}}
$$

ou


$$
\eta(\%) = \frac{\text{Psaída}}{\text{Pentrada}}
$$

$$
\text{watts de saída} = \text{watts de entrada} - \sum \text{perdas}
$$
$$
\eta = \frac{FP \cdot S_n}{FP \cdot S_n + P_{erdas}}
$$

Para $P_{erdas} = P_{cc} + P_{ca}$, $P_{cc}$ e $P_{ca}$ vem dos ensaios realizados no transformador.


Fator de potência

$$
FP = cos(\theta)
$$

$$
\theta = arccos(FP)
$$

## Impedância percentual de transformadores

A impedância percentual, também conhecida como impedância de curto-circuito percentual $Z(\%)$, é uma medida que expressa a queda de tensão interna do transformador quando ele está fornecendo sua corrente nominal, referida à tensão nominal. Em outras palavras, ela representa a porcentagem da tensão nominal que seria "perdida" internamente devido à impedância do transformador se uma corrente nominal estivesse fluindo por ele.

Para se calcular a impedância percentual:
$$
Z\% = \frac{V_{cc}}{V_n}
$$

Impedância do Transformador em Ohms
$$
Z_t = (\frac{V^2}{S_N}) \cdot \frac{Z\%}{100}
$$

Corrente de curto-circuito aproximada
$$
I_{cc} = \frac{V_L}{Z_t \cdot \sqrt{3}}
$$

## Operação em paralelo de transformadores
Dois transformadores operam em paralelo, quando recebem energia de um mesmo barramento, entregando-a em um barramento comum.

![](../../../../static/anexos/Pasted%20image%2020260930212924.png)

$$
I_{circ} = \frac{E_{2a} - E_{2b}}{Z_{eq_a} + Z_{eq_b}}
$$

Caso a regulação de transformação dos dois transformadores não forem iguais haverá uma diferença de tensão no secundário dos transformadores, que provocará uma corrente circulante entre os transformadores.

## Autotransformadores

Quando os dois enrolamentos de um transformador monofásico convencional são conectados em série, tem-se um autotransformador.

![](../../../../static/anexos/Pasted%20image%2020260930213430.png)


---

A principal diferença entre as configurações de um autotransformador está na forma como os enrolamentos são associados para formar os terminais de alta tensão ($V_A$) e baixa tensão ($V_B$).

### Autotransformador Abaixador

![](../../../../static/anexos/Pasted%20image%2020260930213513.png)

Na configuração abaixadora, a tensão de entrada (alta tensão, $V_A$) é aplicada sobre a associação em série dos dois enrolamentos, enquanto a tensão de saída (baixa tensão, $V_B$) é obtida sobre apenas um dos enrolamentos (geralmente $E_2$). 
- $V_A = E_1 + E_2$
- $V_B = E_2$

A relação de tensões para o abaixador fica da seguinte forma:

$$
\frac{V_A}{V_B} = \frac{E_1 + E_2}{E_2} = \frac{N_1 + N_2}{N_2}
$$

### Autotransformador Elevador
![](../../../../static/anexos/Pasted%20image%2020260930213525.png)
Na configuração elevadora, ocorre o inverso: a tensão de entrada (baixa tensão, $V_B$) é aplicada sobre apenas um dos enrolamentos (geralmente $E_1$), e a tensão de saída (alta tensão, $V_A$) é obtida a partir da soma das tensões dos dois enrolamentos em série.
- $V_A = E_1 + E_2$
- $V_B = E_1$

A relação de tensões para o elevador fica da seguinte forma:

$$
\frac{V_A}{V_B} = \frac{E_1 + E_2}{E_1} = \frac{N_1 + N_2}{N_1}
$$

---

Considerando o autotransformador ideal, a corrente de excitação é nula, ficando a corrente no lado da alta tensão da seguinte forma:

$$
I_A = I_1 = \frac{N_2}{N_1} \cdot I_2
$$

$$
I_B = I_1 + I_2
$$

A corrente no lado de baixa tensão é a soma das correntes nos enrolamentos. A relação entre as correntes fica da seguinte forma:

$$
\frac{I_A}{I_B} = \frac{I_1}{I_1 + I_2} = \frac{N_1}{N_1 + N_2}
$$

A potência aparente do autotransformador ideal é determinada por:

$$
S_{auto} = V_A \cdot I_A = (E_1 + E_2) \cdot I_1
$$

A potência aparente de um transformador convencional:

$$
S_{conv} = E_1 \cdot I_1 = E_2 \cdot I_2
$$

A relação entre essas duas potências fica da seguinte forma:

$$
\frac{S_{auto}}{S_{conv}} = 1 + \frac{E_2}{E_1}
$$

Manipulando a equação:

$$
S_{auto} = S_{conv} + S_{conv} \cdot \frac{E_2}{E_1}
$$

A relação entre as potências do transformador abaixador convencional e do autotransformador:

$$
S_{auto} = S_{conv} + S_{conv} \cdot \frac{E_2}{E_1}
$$

A partir da relação de potência dos transformadores, tem-se qual a parcela de potência transferida diretamente $S_{auto+}$ pelo autotransformador, ou seja, não por indução magnética, é dada por:

$$
S_{auto+} \approx S_{conv} \cdot \frac{E_2}{E_1}
$$

*(Para $E_1$ e $E_2$ tensões nominais para cada enrolamento em ligação normal do transformador, sem ser auto).*




# Potência no Autotransformador: Ligação Aditiva vs. Subtrativa

A fórmula clássica e mais conhecida para a potência do autotransformador pressupõe uma ligação **aditiva** padrão. No entanto, a verdadeira capacidade de potência de um autotransformador depende estritamente de **qual enrolamento está em série** e de como as tensões se relacionam na saída (se somam ou se subtraem).

### 1. A Regra Geral (Limitada pela Corrente)
A potência máxima que o autotransformador pode entregar sem queimar é sempre limitada pela corrente nominal do enrolamento que fica conectado em **série** com a linha de saída. 

A fórmula universal e mais segura para calcular a potência aparente de saída é:

$$
S_{auto} = V_{saida} \cdot I_{serie\_nom}
$$

Onde a corrente nominal do enrolamento em série é extraída dos dados do transformador convencional:

$$
I_{serie\_nom} = \frac{S_{conv}}{V_{serie}}
$$

---

### 2. Ligação Aditiva (As tensões se somam)
Na polaridade aditiva, a tensão do enrolamento em série é somada à tensão do enrolamento comum.
* **Tensão de Saída:** $V_{saida} = V_{comum} + V_{serie}$

Neste caso específico, a fórmula universal pode ser matematicamente reescrita na sua forma clássica:

$$
S_{auto} = S_{conv} \cdot \left(1 + \frac{V_{comum}}{V_{serie}}\right)
$$

**Exemplo prático (1200 V e 120 V em Aditiva):**
* $V_{saida} = 1200\text{ V} + 120\text{ V} = 1320\text{ V}$
* Aplicando a fórmula genérica:

$$
S_{auto} = 10\text{k} \cdot \left(1 + \frac{1200}{120}\right) = 110\text{ kVA}
$$

---

### 3. Ligação Subtrativa (As tensões se subtraem)
Na polaridade subtrativa (como no caso do Exercício 14), a tensão do enrolamento em série é **subtraída** da tensão do enrolamento comum.
* **Tensão de Saída:** $V_{saida} = V_{comum} - V_{serie}$

Como a tensão no terminal de saída é menor, mas o limite de corrente imposto pelo enrolamento em série continua o mesmo, a potência total entregue à carga **diminui**. 

**A fórmula genérica com o sinal de soma $(1 + \dots)$ falha aqui.** Devemos usar o raciocínio da corrente limitante:

$$
S_{auto} = (V_{comum} - V_{serie}) \cdot I_{serie\_nom}
$$

**Exemplo prático (Ex. 14 - 1200 V e 120 V em Subtrativa):**
* $V_{saida} = 1200\text{ V} - 120\text{ V} = 1080\text{ V}$
* Corrente máxima tolerada pelo enrolamento em série de 120 V = $83,33\text{ A}$

$$
S_{auto} = 1080\text{ V} \cdot 83,33\text{ A} = 90\text{ kVA}
$$

---

### Resumo / Conclusão
Nunca aplique a relação de transformação $\frac{E_1}{E_2}$ diretamente sem antes verificar o circuito elétrico. É necessário identificar:
1. Qual enrolamento faz o papel de **comum** e qual está **em série**.
2. Se a tensão no terminal da carga é resultado de uma **soma** (aditiva) ou **subtração** (subtrativa) dessas bobinas.

Na **ligação subtrativa**, a potência $S_{auto}$ (Ex: $90\text{ kVA}$) será **menor** do que na aditiva (Ex: $110\text{ kVA}$) porque a tensão efetiva de saída cai, enquanto o "gargalo" da corrente nominal da bobina em série permanece inalterado.


para ABC:
- Se estou em **Y**, quem tem defasagem de $30^\circ$ é a **Tensão**.
    
    - Tensão Linha = Fase $+ 30^\circ$
        
- Se estou em **$\Delta$**, quem tem defasagem de $30^\circ$ é a **Corrente**.
    
    - Corrente Linha = Fase $- 30^\circ$



$$
V = 4,44NfB_{máx}A
$$




$$
\frac{V}{N} = e[\frac{Volt}{espira}]
$$

De forma que:

$$
\frac{V}{N} = \frac{4,44NfB_{máx}A}{N}
$$

$$
e = 4,44fB_{máx}A
$$

$$
\frac{e}{4,44fB_{máx}} = A
$$









