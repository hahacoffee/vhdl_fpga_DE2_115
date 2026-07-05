# WithSelectWhen5to1_proj_7_241127

VHDL design that selects one of five 3-bit windows of an 18-bit switch input (`SW[17:0]`) and routes it to a 3-bit LED group (`LEDG[2:0]`), using `SW[17:15]` as the selector. `LEDR[17:0]` mirrors all switches directly. This is the `with-select-when` (selected signal assignment) counterpart to `WhenElse5to1_proj_6_241127`, practicing the same 5-to-1 mux logic with a different concurrent statement style.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `with_select_when5to1.vhd`: VHDL Logic Design
- `with_select_when5to1.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
