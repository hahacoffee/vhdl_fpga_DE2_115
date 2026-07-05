# WhenElse5to1_proj_6_241127

VHDL design that selects one of five 3-bit windows of an 18-bit switch input (`SW[17:0]`) and routes it to a 3-bit LED group (`LEDG[2:0]`), using `SW[17:15]` as the selector. `LEDR[17:0]` mirrors all switches directly. Practices the `when-else` concurrent conditional assignment as a priority-style multiplexer.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `when_else5to1.vhd`: VHDL Logic Design
- `when_else5to1.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
