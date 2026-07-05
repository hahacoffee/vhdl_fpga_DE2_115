# HW1_3to8decoder

VHDL implementation of a 3-to-8 seven-segment display decoder. Takes a 3-bit binary value `SW[2:0]` (0-7) and drives an 8-bit segment output `HEX0[7:0]` with the corresponding pattern, using a `when-else` priority chain as the lookup table.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `HW1_3to8decoder.vhd`: VHDL Logic Design
- `HW1_3to8decoder.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
