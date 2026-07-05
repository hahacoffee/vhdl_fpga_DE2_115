# ALU_proj_11_241130

VHDL implementation of an 8-bit Arithmetic Logic Unit. Two 8-bit operands `a`, `b`, a carry-in `cin`, and a 4-bit opcode `sel[3:0]` produce an 8-bit result `y[7:0]`. `sel[3]` chooses between the logic bank and the arithmetic bank; `sel[2:0]` then selects the operation within that bank via `with-select`: logic ops are NOT/AND/OR/NAND/NOR/XOR/XNOR, arithmetic ops are pass-through/increment/decrement on `a` and `b` plus `a+b` and `a+b+cin`.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `alu.vhd`: VHDL Logic Design
- `alu_1130.bdf`: Schematic entry
- `alu_1130.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
