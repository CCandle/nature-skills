# Firmware Architecture Review Checklist

## Interrupts and critical sections

- [ ] Interrupt priority grouping appropriate?
- [ ] No `__enable_irq()` inside ISR — PRIMASK save/restore used?
- [ ] Critical section length bounded and known?
- [ ] Shared data protected (volatile, atomic access)?

## State machines

- [ ] State transitions fully enumerated?
- [ ] Default / catch-all case for invalid states?
- [ ] State machine re-entrant or protected?
- [ ] Timeout / watchdog on stuck states?

## Communication

- [ ] UART/SPI/I2C FIFO depth vs interrupt rate?
- [ ] DMA descriptor management — overflow handling?
- [ ] Protocol error recovery defined?
- [ ] Buffer overflow protection on receive paths?

## ADC / sampling

- [ ] Sampling timer jitter budget?
- [ ] DMA double-buffering for continuous sampling?
- [ ] Data ready flag vs interrupt vs DMA completion?

## Common firmware pitfalls
- Blocking delay loops in interrupt context
- Missing volatile qualifier on shared variables
- Stack overflow risk (deep call chains in ISR)
- Watchdog timeout shorter than worst-case execution path
- Uninitialised peripheral before use
- Config register writes without read-back verification
