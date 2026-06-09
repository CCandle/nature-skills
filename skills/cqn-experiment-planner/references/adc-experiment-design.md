# ADC Experiment Design Patterns

Common ADC characterisation experiment designs.

## ENOB measurement

**Setup:** Signal generator → bandpass filter → ADC input
**Parameters:** fs, f_in, V_in amplitude, N samples
**Analysis:** Sine fit → remove fundamental → integrate noise + distortion → ENOB = (SNR - 1.76) / 6.02
**Pitfalls:** Window selection affects leakage; ensure coherent sampling or use window

## Offset and gain drift

**Setup:** Short ADC input to Vref/2 or ground via known resistor
**Measurement:** Record 10k samples every 30s for 1 hour
**Analysis:** Mean vs time plot, standard deviation, max-min spread

## Noise floor characterisation

**Setup:** Terminate ADC input with 50 Ω
**Measurement:** Record 100k samples, compute histogram and PSD
**Analysis:** RMS noise in LSB, noise spectral density, 1/f corner
