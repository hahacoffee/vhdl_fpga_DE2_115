# TwoDigitCounterSSD_proj_15_241202

VHDL implementation of a two-digit BCD counter (00-99) driving two seven-segment displays, `digit1` (ones) and `digit2` (tens). On each rising edge of `clk`, the ones digit increments and rolls from 9 back to 0, carrying into the tens digit; `rst` clears both digits. Each digit is decoded to its seven-segment pattern with a `case` statement, practicing cascaded counters and shared decode logic.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `counter.vhd`: VHDL Logic Design
- `two_digit_counter_ssd.bdf`: Schematic entry
- `two_digit_counter_ssd.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
