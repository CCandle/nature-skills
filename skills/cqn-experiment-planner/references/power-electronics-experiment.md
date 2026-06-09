# Power Electronics Experiment Patterns

## SVPWM verification

**Setup:** Inverter phase outputs → differential probes → oscilloscope
**Parameters:** DC bus voltage, switching frequency, modulation index, fundamental frequency
**Check:** Phase voltage waveform shape, line-to-line voltage, current THD
**Expected:** Sinusoidal phase currents, PWM line-to-line voltage with characteristic 7-segment pattern

## Dead-time effect measurement

**Setup:** Half-bridge output → current probe → oscilloscope
**Parameters:** Dead-time setting, load current direction, switching frequency
**Check:** Voltage glitch at zero-crossing, THD increase vs dead-time
