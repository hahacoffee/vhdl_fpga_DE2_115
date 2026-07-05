# DecoderSsd_proj_10_241127

VHDL implementation of a 3-to-7 seven-segment display decoder. Takes a 3-bit binary value `SW[2:0]` (0-7) and drives `HEX0[6:0]` with the corresponding seven-segment encoding, using a `with-select` concurrent assignment as a lookup table.

## Tools Used
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition
- Visual Studio Code

## Project Structure
- `decoder_ssd.vhd`: VHDL Logic Design
- `decoder_ssd.qpf` / `.qsf`: Quartus Project & Pin Configurations

*Author: Jeffery*
