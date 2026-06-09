# Test Point and Debuggability Review

## Essential test points (PCB)

- [ ] Power rails (each distinct voltage): test point accessible with multimeter / scope
- [ ] ADC input: accessible with probe before and after anti-aliasing filter
- [ ] Vref: dedicated test point close to ADC Vref pin
- [ ] Switching node: accessible but safe (not adjacent to user-touchable area)
- [ ] Ground: multiple GND test points for scope reference
- [ ] Clock output: buffered clock test point if PLL/oscillator is internal

## Debug interfaces

- [ ] SWD/JTAG connector accessible on assembled board?
- [ ] UART debug console on standard header (3.3V/1.8V)?
- [ ] GPIO breakout for logic analyser?
- [ ] LED indicators for: power good, FPGA done, error, heartbeat?

## Signal accessibility

- [ ] Critical signals accessible without shorting adjacent pins?
- [ ] Series resistor or 0-ohm jumper for isolating debug?
- [ ] SPI/I2C bus accessible with probe clip?

## Common debuggability issues
- BGA device with no breakout of critical signals
- ADC input buried under connector or heatsink
- Power rail test point after ferrite bead (not representative of device supply)
- SWD/JTAG shared with GPIO function without configuration documentation
- No visual indicator for FPGA configuration status
