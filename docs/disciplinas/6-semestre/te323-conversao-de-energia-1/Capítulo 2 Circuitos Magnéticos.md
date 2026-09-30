#### Principais equações

$$
R_n = \frac{l_n}{A_n  \cdot \mu}
$$

para $\mu = \mu_r \cdot \mu_0$

$$
e = N \frac{d\phi}{dt} = \mathcal{F}_{\text{em}}
$$

$$
\phi = B \cdot A
$$

$$
H = \frac{B}{\mu}
$$


$$
B = \frac{\phi_{Wb}}{A}
$$

$$
\phi = \frac{NI}{{R}_n}
$$


$$
L = \frac{\lambda}{I}
$$

$$
W = \frac{1}{2} \cdot L \cdot I^2
$$

$1\text{in} = 0,0254m$

$1\text{cm}^2 = 100\mu m^2$ e $1\text{cm}^3 = 1\mu m^3$

### Corrente de pico

A corrente de pico ocorre quando o fluxo e a densidade de fluxo magnético estão no seu máximo ($B_{max}$). Usamos a Lei de Ampère:

$$
N \cdot I_{pico} = H_{max} \cdot l_c
$$

$$
I_{pico} = \frac{ H_{max} \cdot l_c}{N}
$$

### Calcular a largura média do núcleo $l_c$

É o caminho médio que o fluxo percorre no núcleo magnético:

![](../../../../static/anexos/Pasted%20image%2020260929204410.png)

Nesse exemplo: 
- Largura média = $8 \text{ in} - 1 \text{ in} - 1 \text{ in} = 6 \text{ in}$
    
- Altura média = $10 \text{ in} - 1 \text{ in} - 1 \text{ in} = 8 \text{ in}$
    
- $l_c = 2 \times 6 \text{ in} + 2 \times 8 \text{ in} = 28 \text{ in}$
    
- Convertendo para metros: $l_c = 28 \times 0,0254 = 0,7112 \text{ m}$.

### Corrente eficaz para núcleo não linear

Encontrar a verdadeira corrente eficaz em um núcleo não-linear geralmente requer a tabela de Potência Aparente Específica (VA/lb) do aço, a qual usaria a densidade fornecida no enunciado. Assim, ao descobrir a potência $S$ podemos usar a fórmula:

$$
S = V_{rms} \cdot I_{rms}
$$

Para o caso do exercício 5 do capítulo 2, presente da lista de resolução de exercícios [Listas Resolvidas](Listas%20Resolvidas.md#resolução-dos-exercícios-dos-slides)

**Cálculo da Massa do Núcleo (usando a densidade dada de $7,65 \text{ g/cm}^3$ ou $7650 \text{ kg/m}^3$):**

- $V_{geo} = A_{geo} \cdot l_c = 0,00258064 \cdot 0,7112 = 0,001835 \text{ m}^3$
    
- Volume de aço = $0,94 \cdot 0,001835 = 0,001725 \text{ m}^3$
    
- Massa = $7650 \cdot 0,001725 = 13,2 \text{ kg}$
    
Converter para lb $13,2 \text{kg} \cdot 2,2 =29,04 \text{lb}$

Usar a tabela para o aço M-19:
$$
S = 18 \cdot 29,04 = 522,72 VA
$$
em que $18$ é o valor tabelado.

Agora para a corrente eficaz:

$$
I_{rms} = \frac{S}{V_{rms}} = \frac{529,2}{\frac{274,36}{\sqrt{2}}} = 2,73 A
$$
### Força de elevação de um eletroímã

A força de elevação de um eletroímã é a força magnética
resultante da interação entre o campo magnético gerado pelo
eletroímã e um objeto ferromagnético, como um pedaço de
ferro. Quando uma corrente elétrica é aplicada ao enrolamento
do eletroímã, um campo magnético é gerado, o que induz um
campo magnético no objeto ferromagnético próximo. Esse
campo magnético resultante cria uma força de atração entre o
eletroímã e o objeto, conhecida como força de elevação.

$$
B = \frac{\mu \cdot N \cdot I}{l}
$$

onde $\mu$ é a permeabilidade magnética do material do
núcleo, $N$ é o número de espiras, $I$ é a corrente elétrica e
“$L$”​ é o comprimento médio do caminho magnético.

A força magnética ($F$) sobre um objeto de área A
dentro do campo magnético é dada por:

$$
F = B^2 A \frac{1}{2\mu}
$$
onde $A$ é a área da superfície do objeto que
interage com o campo magnético.

Portanto, combinando as duas equações, obtemos a fórmula para a
força de elevação (F) de um eletroímã:

$$
F = \frac{\mu N^2 I^2 A}{2 l^2}
$$
Exemplo disponível nas listas resolvidas Exercício 6 Cap. 2
