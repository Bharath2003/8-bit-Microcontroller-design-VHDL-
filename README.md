# 🧠 VHDL-Based Microcontroller Simulation (FPGA4 Adaptation)

A fully modular **microcontroller simulation in VHDL**, adapted and extended from the **FPGA4 Student Series**.  
This project demonstrates instruction decoding, memory handling, and I/O port simulation using a clocked architecture — verified through waveform simulation.

---

## 🔹 Overview

This project implements the **core components of a simple microcontroller** entirely in **VHDL**, with a structured approach to simulate the instruction execution process.  
Each hardware module — including ALU, Control Unit, Memory, and I/O ports — is individually designed, then integrated into a top-level entity for complete system simulation.

---

## ⚙️ Features

- 🧩 **Instruction Execution:** Supports arithmetic and logic operations via ALU.  
- 💾 **Memory Design:** Separate ROM and RAM for instruction and data handling.  
- 🔌 **I/O Interfacing:** `port_in_xx` and `port_out_xx` modules emulate hardware interfacing.  
- ⏱️ **Clocked Synchronization:** All modules operate on rising-edge clock signals.  
- 🧠 **Simulation Verified:** Verified using ModelSim for waveform and opcode analysis.

---

## 🧩 Project Architecture

+-----------------------+
| Control Unit |
| (Instruction Decode) |
+----------+------------+
|
v
+----------+------------+
| ALU |
| (Arithmetic & Logic) |
+----------+------------+
|
v
+----------+------------+
| Memory (RAM / ROM) |
| Data & Instruction |
+----------+------------+
|
v
+----------+------------+
| Input / Output Ports |
| External Interaction |
+-----------------------+


---

## 🧪 Simulation Environment

- **Language:** VHDL  
- **Tools:**  Vivado  
- **Target FPGA (optional):** Nexys A7 or Spartan-6  
- **Verification:** All modules tested using custom testbench files  

Simulation focuses on:
- Instruction fetch → decode → execute cycle  
- Signal propagation across modules  
- Timing and synchronization verification  

---

## 📁 Directory Structure
Microcontroller_Simulation
│
├── /src
│ ├── ALU.vhd
│ ├── Control_Unit.vhd
│ ├── Input_Ports.vhd
│ ├── Output_Ports.vhd
│ ├── RAM.vhd
│ ├── ROM.vhd
│ └── Top_Level.vhd
│
├── /tb
│ └── testbench.vhd
│
├── /simulation
│ ├── waveform_screenshots/
│ └── results.txt
│
└── README.md


---

## 📊 Example Simulation Output

| Operation | Opcode | Input | Output | Verified On |
|------------|--------|--------|----------|--------------|
| ADD        | 0001   | 5 + 3  | 8        | ModelSim     |
| AND        | 0010   | 1010 & 1100 | 1000 | ModelSim     |
| OUT PORT   | 1000   | 0xFF  | LED Port High | ModelSim     |

---

## 🧠 Key Learnings

- Understanding of **microcontroller datapath design**  
- Practical use of **VHDL modular design**  
- Simulation-based debugging and waveform interpretation  
- Insight into **opcode control and execution flow**  

---

## 🔗 Credits & References

This project is **inspired by and adapted from the FPGA4 Student Series**:  
> [FPGA4Student – Simple VHDL Microcontroller](https://www.fpga4student.com/)

All base modules (ALU, Control Unit, Memory, I/O) were studied from FPGA4 and restructured for deeper simulation analysis, improved modularity, and educational enhancement.

---

## ⚖️ License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.  

**© 2025 Bharat Y S**

---

## 🤝 Acknowledgements

Special thanks to **FPGA4 Student Series** for their foundational material and clear architectural explanations, which formed the basis of this simulation work.

---

## 🚀 Future Improvements

- Implement UART interface for serial communication  
- Add stack memory and interrupt handling  
- Expand instruction set and support pipelined operations  
- Deploy on FPGA board (Nexys A7 or Spartan-6)

---

## 🧩 Author

**Bharat Y S**  
_M.Tech in Embedded Systems_  
Focus Areas: Embedded Design | VLSI | Chip Verification | FPGA-based Systems  

