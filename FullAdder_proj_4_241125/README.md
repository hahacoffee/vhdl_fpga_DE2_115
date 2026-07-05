# FullAdder_proj_4_241125

VHDL implementation of a 1-bit full adder. Takes `a`, `b`, and carry-in `Cin` and produces `Sum` and carry-out `Cout` using pure dataflow (concurrent) Boolean equations: `Sum <= a xor b xor Cin` and `Cout <= (a and b) or (b and Cin) or (a and Cin)`.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `full_adder.vhd`: VHDL Logic Design
- `full_adder1125.bdf`: Schematic entry
- `full_adder1125.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
