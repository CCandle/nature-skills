# Three-Phase Waveform Template

## When to use
Displaying three-phase current or voltage waveforms from an inverter,
motor drive, or grid connection.

## Required parameters
- Sampling rate (fs)
- Phase currents (I_a, I_b, I_c) or voltages (V_a, V_b, V_c)
- Time vector
- Unit (A or V)

## Axes
- X: Time (ms or s)
- Y: Current (A) or Voltage (V), one panel per phase or overlaid

## Recommended layout
- Overlaid in a single panel with distinct colours (A=blue, B=red, C=green)
- Or stacked vertically with shared X axis for dense zoomed views
- Mark one electrical cycle period if showing steady-state

## Annotations
- Phase labels: A, B, C
- One electrical cycle period
- Key features: zero-crossing, peak, switching instants (for PWM)

## Example caption
"Three-phase motor currents at 50 Hz fundamental, 10 kHz switching
frequency. fs = 1 MS/s. Phase A (blue), B (red), C (green)."
