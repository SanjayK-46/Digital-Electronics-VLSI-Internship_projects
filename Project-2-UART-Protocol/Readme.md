# UART Transmitter (TX) Design Using Verilog HDL

## 📌 Project Overview

This project implements an **8-bit UART Transmitter (TX)** using Verilog HDL.

The design converts **8-bit parallel data into a serial UART data stream** using a Finite State Machine (FSM). The transmitter generates a Start Bit, transmits 8 data bits in LSB-first order, and generates a Stop Bit.

The design is developed and simulated using **Xilinx Vivado 2025.2**.

> **Note:** This project implements the UART Transmitter (TX) only. UART Receiver (RX) is not included.

---

## 🎯 Objectives

- Design an 8-bit UART Transmitter using Verilog HDL.
- Convert parallel data into serial data.
- Implement Start, Data, and Stop bits.
- Transmit data in LSB-first order.
- Implement FSM-based transmission control.
- Develop a synthesizable RTL design.
- Verify the design using a Verilog testbench.
- Analyze the UART TX waveform using Vivado.

---

## 🛠️ Tools and Technologies

| Item | Details |
|---|---|
| HDL | Verilog |
| EDA Tool | Xilinx Vivado 2025.2 |
| Simulation | Vivado Behavioral Simulation |
| Data Width | 8-bit |
| Protocol | UART |
| Design Method | RTL / FSM |
| Target | FPGA |

---

## 📡 UART Communication

UART stands for **Universal Asynchronous Receiver/Transmitter**.

The transmitter sends data serially without a separate clock signal.

### UART Frame Format

The transmitter uses the following frame:

```text
Idle | Start | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | Stop
  1      0      └──── 8-bit data, LSB first ────┘      1
