# Bode / Step Response Template

## When to use
Frequency response (Bode plot) or time-domain step response of a
control system, filter, or amplifier.

## Required parameters (Bode)
- Frequency vector
- Gain (dB) and phase (°) vectors
- -3 dB point / bandwidth

## Required parameters (step response)
- Time vector
- Step input and output
- Overshoot, rise time, settling time

## Axes (Bode)
- X: Frequency (Hz), log scale
- Y1: Gain (dB)
- Y2: Phase (°), shared X

## Axes (step response)
- X: Time (ms or s)
- Y: Amplitude (V or normalized)

## Recommended layout
- Bode: magnitude and phase in stacked panels with shared X
- Step: single panel with input and output overlaid
- Mark bandwidth on Bode, settling time on step response

## Annotations (Bode)
- -3 dB point with dashed line and frequency label
- Gain margin and phase margin if applicable

## Annotations (step)
- Overshoot percentage
- Rise time (10-90%)
- Settling time (±2%)

## Example caption (Bode)
"Open-loop frequency response of the current control loop.
Bandwidth = 1.2 kHz (-3 dB). Phase margin = 52° at 0 dB crossing."

## Example caption (step)
"Step response of the current control loop. Overshoot = 8 %,
rise time = 120 μs, settling time = 350 μs (±2 %)."
