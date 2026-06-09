# ADC Analysis Formulas

## ENOB from SNR

```
SNR (dB) = 20 log10(V_signal_rms / V_noise_rms)
ENOB = (SNR - 1.76) / 6.02
```

Where SNR includes only noise (not distortion). Use SINAD for ENOB including distortion.

## SINAD from FFT

```
SINAD (dB) = 10 log10(P_signal / P_noise+distortion)
ENOB = (SINAD - 1.76) / 6.02
```

## Quantisation noise floor

For an ideal N-bit ADC:
```
Q_noise_rms = LSB / sqrt(12)
SNR_ideal = 6.02 * N + 1.76 (dB)
```

## Offset and gain error

```
Offset = mean(code) at zero input
Gain_error = (measured_gain - ideal_gain) / ideal_gain
```
