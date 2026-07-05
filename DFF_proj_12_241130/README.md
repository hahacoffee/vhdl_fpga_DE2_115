# DFF_proj_12_241130

VHDL implementation of a D-type flip-flop with asynchronous reset. On `rst='1'` the output `q` is cleared immediately; otherwise `q` captures `d` on the rising edge of `clk` (`clk'event and clk='1'`). Practices the standard `process(rst, clk)` sequential-logic template for edge-triggered storage elements.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `dff_1130.vhd`: VHDL Logic Design
- `dff_test.bdf`: Schematic entry
- `dff_test.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
