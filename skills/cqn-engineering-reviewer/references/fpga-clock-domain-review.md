# FPGA Clock Domain Review Checklist

## Clock domains

- [ ] All clock sources identified?
- [ ] FIFO / handshake CDC for each crossing?
- [ ] Metastability protection (synchroniser flops)?
- [ ] False path / async timing constraints set?

## DMA / AXI

- [ ] DMA burst size vs bus width?
- [ ] Buffer size vs latency requirement?
- [ ] Overflow/underflow handling?
- [ ] Descriptor chain management?

## Resource usage

- [ ] LUT / FF utilisation?
- [ ] BRAM / URAM utilisation?
- [ ] DSP utilisation?
- [ ] Timing closure (WNS)?
