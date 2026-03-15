# Mux2to1_proj_5_241125

## Description
This project implements a simple 2-to-1 data multiplexer using basic logic gates (AND, OR, NOT) in VHDL. The design utilizes concurrent dataflow statements to map standard switches as inputs (data lines and a selector) and directs the selected logic output to a corresponding Green LED on the Altera DE2-115 FPGA board, while also routing all current switch states directly to Red LEDs for observation.

## Core Concepts
* **Combinational Logic Design**: Modeling a data selection function directly via a Boolean equation (`(not S AND D0) OR (S AND D1)`).
* **Dataflow Architecture**: Utilizing concurrent signal assignments within a VHDL architecture for immediate logic evaluation.
* **Basic I/O Interfacing**: Demonstrating parallel input sampling and multi-target output mapping.

## Author
**Jeffery**


