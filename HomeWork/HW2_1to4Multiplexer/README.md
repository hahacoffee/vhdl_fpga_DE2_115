# HW2_1to4Multiplexer

VHDL implementation of a 1-to-4 demultiplexer. A single data bit `SW(0)` is routed to one of four positions in `LEDG[3:0]` based on the 2-bit select `SW[2:1]`, while `LEDR[2:0]` mirrors the raw switch inputs. Implemented with a `when-else` concurrent assignment building each output pattern via bit concatenation.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `HW2_1to4Multiplexer.vhd`: VHDL Logic Design
- `HW2_1to4Multiplexer.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
