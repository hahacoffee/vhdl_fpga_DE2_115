# FourBitCounterSSD_proj_16_241202

VHDL implementation of a mod-10 (BCD) counter with seven-segment display output. `KEY(1)` is an active-low asynchronous reset and `KEY(0)` is the clock; the counter increments on the rising edge, wraps from 9 (`"1001"`) back to 0, and is shown both as a raw 4-bit value on `LEDG[3:0]` and decoded to `HEX0[0:6]` via a `with-select` lookup table.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `four_bit_counter_ssd.vhd`: VHDL Logic Design
- `four_bit_counter_ssd.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
