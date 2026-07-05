# Encoder_proj_9_241127

VHDL implementation of an 8-to-3 encoder. A one-hot 8-bit input `a[7:0]` is translated into its 3-bit binary index `b[2:0]` (e.g. `"00000001" -> "000"`, `"10000000" -> "111"`); any non-one-hot input drives `b` to `"ZZZ"`. Implemented with a `with-select` concurrent assignment.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `encode.vhd`: VHDL Logic Design
- `encoder8to3.bdf`: Schematic entry
- `encoder8to3.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
