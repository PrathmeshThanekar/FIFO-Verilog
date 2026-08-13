# Synchronous FIFO Design Using Verilog

## Overview

This project implements a **Synchronous FIFO (First-In First-Out) memory** using Verilog HDL.

The FIFO stores data temporarily and ensures that the **first data written into the FIFO is the first data read out**. The design includes write and read control logic along with `full` and `empty` status flags.

## Features

* Synchronous FIFO architecture
* Parameterizable data width and FIFO depth
* Separate read and write operations
* `full` flag to prevent writing when FIFO is full
* `empty` flag to prevent reading when FIFO is empty
* Read and write pointer management
* Verilog testbench for functional verification
* Simulation using Xilinx Vivado

## FIFO Operation

The FIFO uses:

* **Write Enable (`wr_en`)** – Enables writing data into the FIFO.
* **Read Enable (`rd_en`)** – Enables reading data from the FIFO.
* **Write Pointer** – Points to the location where the next data will be written.
* **Read Pointer** – Points to the location from which the next data will be read.
* **Full Flag (`full`)** – Indicates that the FIFO cannot accept more data.
* **Empty Flag (`empty`)** – Indicates that the FIFO has no data available to read.

### Write Operation

When `wr_en` is high and the FIFO is not full, input data is stored in the FIFO memory and the write pointer is incremented.

### Read Operation

When `rd_en` is high and the FIFO is not empty, data is read from the FIFO memory and the read pointer is incremented.

## Verification

A Verilog testbench was developed to verify the FIFO functionality.

The testbench checks:

1. Reset operation
2. Writing data into the FIFO
3. Reading data from the FIFO
4. FIFO full condition
5. FIFO empty condition
6. Correct FIFO ordering

The simulation waveform can be found in the `simulation` folder.

## Tools Used

* **Verilog HDL**
* **Xilinx Vivado**
* **Simulation Waveform**

## Applications

FIFO memory is commonly used in:

* Data buffering
* Processor and peripheral communication
* UART and serial communication
* Digital communication systems
* Clock/data management
* FPGA-based digital systems

## Learning Outcomes

Through this project, I gained practical experience in:

* RTL design using Verilog HDL
* Sequential logic design
* Memory modeling
* Read/write pointer management
* FIFO status flag generation
* Testbench development
* Functional verification using simulation

## Author

**Prathmesh Thanekar**

B.Tech Electronics Engineering
VJTI Mumbai
