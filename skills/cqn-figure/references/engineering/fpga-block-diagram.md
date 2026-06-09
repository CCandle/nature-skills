# FPGA / PS-PL / DMA / UDP Block Diagram Template

## When to use
Showing the architecture of an FPGA-based system, Zynq PS-PL
communication, DMA data flow, or UDP packet processing chain.

## Recommended approach
Use a schematic-style annotation figure (hand-drawn or structured
blocks) rather than a data plot. PNG or SVG with labelled blocks
and arrows.

## Blocks to include
- PS (Processing System): ARM cores, DDR controller, peripherals
- PL (Programmable Logic): custom IP, AXI interconnects
- DMA: DMA engine, descriptor ring, buffer addresses
- Data path: ADC → FIFO → DMA → DDR → UDP → Ethernet

## Annotations
- Bus width (AXI 32/64 bit)
- Clock frequencies (PS clock, PL fabric clock)
- Data rates (estimated or measured throughput)
- Buffer sizes

## Recommended layout
- Left-to-right data flow
- Or top-down hierarchy: PS on top, PL below, external interfaces
- Consistent colours for clock domains
- Arrow annotations showing data direction and bus width

## Example caption
"System block diagram: PL acquires ADC data via SPI, buffers in
BRAM, transfers to PS DDR via AXI DMA at 200 MB/s, then transmits
via UDP over 1 Gb Ethernet. Fabric clock = 100 MHz."
