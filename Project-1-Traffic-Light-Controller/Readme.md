# FPGA-Based Traffic Light Controller with Priority System

## 📌 Project Overview

This project implements an **FPGA-Based Traffic Light Controller with Emergency Vehicle Priority** using **Verilog HDL**.

The controller is designed using a **Finite State Machine (FSM)** to control the Red, Yellow, and Green traffic light signals. An emergency input provides priority control for emergency vehicles.

The design is developed and simulated using **Xilinx Vivado 2025.2**.

## 🎯 Objectives

- Design a traffic light controller using Verilog HDL.
- Implement the controller using an FSM.
- Control Red, Yellow, and Green signals.
- Provide priority to emergency vehicles.
- Develop a synthesizable RTL design.
- Verify the design using a Verilog testbench.
- Analyze the simulation waveform using Vivado.

## 🛠️ Tools and Technologies

| Item | Details |
|---|---|
| HDL | Verilog |
| EDA Tool | Xilinx Vivado 2025.2 |
| Simulation | Vivado Behavioral Simulation |
| Design Method | RTL / FSM |
| Target | FPGA |

## 🚦 Traffic Light Operation

The normal traffic sequence is:

```text
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
