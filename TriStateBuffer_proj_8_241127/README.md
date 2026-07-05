# TriStateBuffer_proj_8_241127

VHDL implementation of an 8-bit tri-state buffer. When enable `ena` is `'0'`, `output[7:0]` follows `input[7:0]`; otherwise `output` is driven to high-impedance (`'Z'`) on every bit. Practices tri-state logic for shared-bus scenarios using a `when-else` assignment with an `(others => 'Z')` aggregate.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `tri_state.vhd`: VHDL Logic Design
- `tri_state_buffer.bdf`: Schematic entry
- `tri_state_buffer.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
