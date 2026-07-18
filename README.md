# VHDL FPGA Projects (DE2-115)

Course-based VHDL practice portfolio from the NYCU FPGA digital circuit program.

## Hardware / Tools
- Terasic DE2-115 (Cyclone IV E, EP4CE115F29C7)
- Quartus Prime Lite Edition 18.0
- ModelSim Intel FPGA Edition

## Projects

| Project | Description | Key Concepts |
|---|---|---|
| XOR_proj_1 | Basic XOR logic gate | schematic entry, `.vwf` simulation |
| LightAll_proj_2 | 18 switches mapped to 18 LEDs | GPIO pin assignment, concurrent assignment |
| Diff_NAND_proj_3 | Differential NAND with flip-flop | `process(clk)`, `rising_edge` |
| FullAdder_proj_4 | 1-bit full adder | dataflow Boolean equations |
| Mux2to1_proj_5 | 2-to-1 data multiplexer | concurrent assignment |
| WhenElse5to1_proj_6 | 5-to-1 mux over 18 switches | `when-else` |
| WithSelectWhen5to1_proj_7 | 5-to-1 mux over 18 switches | `with-select-when` |
| TriStateBuffer_proj_8 | 8-bit tri-state buffer | high-impedance output |
| Encoder_proj_9 | 8-to-3 one-hot encoder | `with-select` |
| DecoderSsd_proj_10 | 3-to-7 seven-segment decoder | lookup-table decode |
| ALU_proj_11 | 8-bit ALU, logic + arithmetic | opcode-selected dataflow |
| DFF_proj_12 | D flip-flop, async reset | `process(rst, clk)` |
| UpCounter_proj_13 | 4-bit up counter | wraparound counter |
| ShiftRegister_proj_14 | Generic serial shift register | `generic`, shift logic |
| TwoDigitCounterSSD_proj_15 | Two-digit BCD counter | cascaded counters |
| FourBitCounterSSD_proj_16 | Mod-10 counter + seven-seg | BCD counter |
| FrequencyDivider_proj_17 | Clock divider on CLOCK_50 | 25-bit counter, clock division |

## HomeWork

| Project | Description | Key Concepts |
|---|---|---|
| HW1_3to8decoder | 3-to-8 seven-segment decoder | `when-else` lookup table |
| HW2_1to4Multiplexer | 1-to-4 demultiplexer | bit concatenation |
| HW3_ALU | Simplified 8-bit ALU | `with-select` opcode decode |
| HW4_FourBitCounter | Bouncing up/down counter | direction-flip logic |
| HW5_FrequencyDivider | Clock divider on external clock | small-scale clock division |

## Repository Notes
Compilation artifacts (`db/`, `output_files/`, `simulation/`) are excluded via `.gitignore`; only source
(`.vhd`, `.bdf`, `.bsf`, `.qpf`, `.qsf`, `.vwf`) and documentation are tracked. `.qsf` files carry a large
block of DE2-115 pin assignments inherited from the official board template - only a handful of pins are
actually used per project. Line endings are normalized to LF for HDL/text files via `.gitattributes`.

*Author: Jeffery*
