# FrequencyDivider_proj_17_241202

VHDL clock divider built on the 50 MHz board oscillator `CLOCK_50`. A 25-bit counter increments every rising edge and toggles the output `clk_o` (shown on `LEDG(0)`) each time it reaches `25,165,824` (`"1100000000000000000000000"`), producing a visibly divided clock. `KEY(0)` is an active-low asynchronous reset.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `frequency_divider.vhd`: VHDL Logic Design
- `frequency_divider.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
