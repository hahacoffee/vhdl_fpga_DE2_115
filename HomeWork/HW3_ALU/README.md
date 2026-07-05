# HW3_ALU

VHDL implementation of a simplified 8-bit ALU. Two operands `a`, `b` and a 3-bit opcode `sel[2:0]` select one of seven operations via `with-select`: `a+b`, `a-b`, `a and b`, `a or b`, `not a`, `a xor b`, pass-through `a`, or (default) pass-through `b`. A smaller, single-bank variant of the 4-bit-selected ALU in `ALU_proj_11_241130`.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `alu_HW3.vhd`: VHDL Logic Design
- `HW3_ALU.bdf`: Schematic entry
- `HW3_ALU.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
