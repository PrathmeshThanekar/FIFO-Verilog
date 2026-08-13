# 8×8 Synchronous FIFO Using Verilog

## Overview

This project implements an **8×8 synchronous FIFO (First-In First-Out)** using Verilog HDL.

The FIFO stores up to **8 data words**, with each word being **8 bits wide**. The design was developed and functionally verified using **Xilinx Vivado**.

## Features

* 8-bit data width
* 8-word storage capacity
* Synchronous FIFO operation
* Separate read and write controls
* `full` and `empty` status flags
* Reset functionality
* Supports simultaneous read and write operations
* Verilog testbench for verification
* RTL simulation and waveform analysis

## Project Structure

```text
FIFO-Verilog/
│
├── README.md
│
├── rtl/
│   ├── FIFO_8x8.v
│   ├── FIFO_Top.v
│   ├── Mod_A.v
│   └── Mod_B.v
│
├── testbench/
│   └── FIFO_tb.v
│
└── simulation/
    ├── FIFO_8x8.png
    ├── FIFO_Top.png
    ├── Module_A.png
    ├── Module_B.png
    └── waveforms/
```

## Module Interface

### FIFO_8x8

| Signal     | Direction |  Width | Description       |
| ---------- | --------- | -----: | ----------------- |
| `clk`      | Input     |  1 bit | Clock             |
| `rst`      | Input     |  1 bit | Reset             |
| `wrt_en`   | Input     |  1 bit | Write enable      |
| `rd_en`    | Input     |  1 bit | Read enable       |
| `data_in`  | Input     | 8 bits | Input data        |
| `data_out` | Output    | 8 bits | Output data       |
| `empty`    | Output    |  1 bit | FIFO empty status |
| `full`     | Output    |  1 bit | FIFO full status  |

## Verification

The FIFO was verified through RTL simulation using **Xilinx Vivado**.

The testbench verifies:

* Reset operation
* Data write operation
* Data read operation
* FIFO ordering
* Full condition
* Empty condition
* Simultaneous read and write operation

### Simulation Result

The waveform demonstrates successful FIFO data transfer while maintaining the **First-In First-Out** property.

Example:

```text
Write:  00 → 01 → 02 → 03 → 04 → 05 → 06 → 07

Read:   00 → 01 → 02 → 03 → 04 → 05 → 06 → 07
```

## Tools Used

* **Verilog HDL**
* **Xilinx Vivado**
* **RTL Simulation**

## Applications

FIFO memory is commonly used in:

* Data buffering
* UART communication
* Digital communication systems
* Processor and peripheral communication
* FPGA-based systems
* Temporary data storage

## Learning Outcomes

* RTL design using Verilog HDL
* FIFO implementation
* Sequential logic design
* Testbench development
* Functional verification
* Simulation waveform analysis

## Author

**Prathmesh Thanekar**

B.Tech Electronics Engineering
VJTI Mumbai
