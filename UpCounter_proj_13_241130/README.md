# UpCounter_proj_13_241130

VHDL implementation of a 4-bit up counter. `KEY(0)` is an active-low asynchronous reset and `KEY(1)` is the clock; the counter increments on the falling edge of the clock and wraps from `"1111"` back to `"0000"`, displaying its value on `LEDG[3:0]`. Practices sequential counter design with wraparound logic inside a `process`.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `counter4.vhd`: VHDL Logic Design
- `counter4.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
