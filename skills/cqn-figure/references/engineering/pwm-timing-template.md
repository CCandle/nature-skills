# PWM / SPWM / SVPWM Timing Template

## When to use
Displaying PWM switching waveforms, gate drive signals, or modulation
patterns.

## Required parameters
- Switching frequency (f_sw)
- Modulation frequency (f_mod)
- Dead-time setting
- DC bus voltage

## Axes
- X: Time (μs or ms)
- Y: Voltage (V) for phase/output, or logic level for gate signals

## Recommended layout
- Stacked vertical panels sharing X axis:
  1. Reference signal (sine/triangle for SPWM)
  2. Gate signals (upper/lower switch)
  3. Phase output voltage
  4. Phase current (aligned in time)
- Or: single panel showing PWM pulses with dead-time zoom inset

## Annotations
- Switching period (T_sw)
- Dead-time interval
- Pulse width variation
- Modulation index indication

## Example caption
"SPWM modulation at f_sw = 10 kHz, f_mod = 50 Hz, dead-time = 1 μs.
From top: triangle carrier and sine reference, upper gate signal,
phase A output voltage, phase A current."
