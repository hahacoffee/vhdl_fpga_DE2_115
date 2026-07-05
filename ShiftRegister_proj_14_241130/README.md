# ShiftRegister_proj_14_241130

VHDL implementation of a generic serial-in, serial-out shift register (default width `n=4` via a `generic`). On asynchronous reset (`rst='1'`) the internal register clears; on each rising clock edge the new bit `d` shifts in from the left while existing bits shift right, with the LSB `internal(0)` exposed as the serial output `q`.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `shiftreg.vhd`: VHDL Logic Design
- `shift_reg.bdf`: Schematic entry
- `shift_reg.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
