# FPGA PS-PL Test Plan

Applicable to Zynq / KR260 / similar PS-PL devices.

## Test Scenarios

### 1. DMA throughput test
- PS DDR → PL BRAM → PS DDR loopback
- Measure: throughput (MB/s) vs burst size, buffer count
- Parameters: AXI data width (32/64/128), clock frequency, DMA mode (SG/contiguous)

### 2. PS-PL interrupt latency
- PL asserts IRQ → PS ISR entry → toggle GPIO
- Measure: round-trip latency via oscilloscope or timer
- Parameters: IRQ priority, GIC configuration, cache state

### 3. Clock domain crossing test
- PL fabric clock domain → PS clock domain (or vice versa)
- Measure: data integrity under asynchronous crossing
- Parameters: clock ratio, synchroniser depth, FIFO depth

## Required parameters
- PS clock frequency
- PL fabric clock(s) and their source
- AXI bus width and clock
- DMA descriptor format and ring size
- BRAM / DDR range mapping

## Common pitfalls
- AXI transaction alignment mismatch (e.g., 32-bit DMA on 64-bit fabric)
- Incoherent DMA buffers without cache maintenance
- Descriptor ring overflow under high throughput
- Missing synchroniser on CDC crossing
- Incomplete or incorrect address translation (PS address vs PL address)

## Output requirements
- Throughput test log with burst size, buffer depth, measured BW, CPU load
- Latency histogram or min/max/avg
- Data integrity: checksum or pattern match result
- CDC test: bit error rate over N transfers
