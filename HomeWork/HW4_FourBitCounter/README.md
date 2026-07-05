# HW4_FourBitCounter

VHDL implementation of a 4-bit up/down (bouncing) counter with seven-segment output. On each rising edge of `KEY(0)`, the counter increments while `dir='0'` and decrements while `dir='1'`; `dir` flips automatically at the `"0000"` and `"1001"` boundaries so the count bounces back and forth between 0 and 9, decoded to `HEX0[0:6]` via a `with-select` lookup table.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `HW4_FourBitCounter.vhd`: VHDL Logic Design
- `HW4_FourBitCounter.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
