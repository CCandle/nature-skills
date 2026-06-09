# ADC Raw Code vs Calibrated Signal

## When to use
Showing the effect of ADC offset, gain error, or nonlinearity correction.

## Required parameters
- ADC resolution (bits)
- Vref voltage
- Calibration formula
- Raw codes and calibrated values
- Unit after calibration

## Axes
- X: Sample index or time
- Y (left): Raw ADC code (LSB)
- Y (right): Calibrated value (V, A, °C)

## Recommended layout
- Dual-axis plot: raw code on left Y, calibrated on right Y
- Or side-by-side panels: raw histogram and calibrated time series
- Include ideal vs actual transfer curve if characterising linearity

## Annotations
- Offset value at zero input
- Gain error percentage
- Calibration formula in caption

## Example caption
"ADC raw codes (left axis) and calibrated current (right axis) for a
12-bit ADC with Vref = 3.3 V. Calibration: I = (code - 2048) * 3.3 / 4096 / 0.01.
Offset = 5 LSB corrected."
