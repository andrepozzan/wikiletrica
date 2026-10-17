---
id: te328-microprocessadores-microcontroladores
title: TE328 - Microprocessadores e Microcontroladores
tags:
  - microcontroladores
  - arm
  - stm32
  - embedded
  - assembly
---

# TE328 - Microprocessadores e Microcontroladores

**Semestre:** 5º Semestre  
**Carga horária:** 60 h  
**Departamento:** Engenharia Elétrica - UFPR  

---

## 📚 Visão Geral da Disciplina

Estuda a arquitetura interna de computadores dedicados, conjunto de instruções (ISA RISC vs CISC), microcontroladores modernos (família ARM Cortex-M, STM32 e microcontroladores de 8/32 bits), periféricos integrados (GPIO, Timers, PWM, ADC/DAC) e sistemas de interrupção em tempo real.

```mermaid
flowchart TD
    M1["1. Arquitetura de Processadores<br/>Von Neumann vs. Harvard, Barramentos e Pipeline"]
    M2["2. Memória e Conjunto de Instruções<br/>Flash, SRAM, Registradores e Linguagem Assembly/C"]
    M3["3. Periféricos Fundamentais<br/>Portas GPIO, Temporizadores (Timers) e Modulação PWM"]
    M4["4. Interrupções e NVIC<br/>Vetor de Interrupções, Prioridades e Latência"]
    M5["5. Comunicação Serial Integrada<br/>UART, SPI e I²C"]

    M1 --> M2 --> M3 --> M4 --> M5
```

---

## 📑 Principais Tópicos Teóricos

### 1. Arquiteturas de Computadores
* **Von Neumann:** Barramento compartilhado para instruções e dados (gargalo de Von Neumann).
* **Harvard:** Barramentos físicos independentes para memória de instruções (Flash) e de dados (SRAM), permitindo acesso simultâneo.

### 2. Tratamento de Interrupções
Ocorrências assíncronas externas (borda em pino GPIO) ou internas (estouro de timer) acionam a **Rotina de Serviço de Interrupção (ISR)**:
* Salvamento automático de contexto (registradores no Stack).
* Execução da ISR prioritária configurada no NVIC.
* Restauração do contexto e retorno ao programa principal.
