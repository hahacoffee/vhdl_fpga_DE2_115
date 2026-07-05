# HW5_FrequencyDivider

VHDL clock divider driven directly by an external `CLOCK` input. A 5-bit counter increments each rising edge and wraps after reaching 24, while `LEDG(0)` is held low for the first half of the cycle (`pre_Q < 12`) and high for the second half, producing a divided square wave. A smaller-scale companion to `FrequencyDivider_proj_17_241202`, which divides the 50 MHz board clock with a 25-bit counter instead.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `HW5_FrequencyDivider.vhd`: VHDL Logic Design
- `HW5_FrequencyDivider.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
