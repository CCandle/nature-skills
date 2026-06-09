# THD Calculation Guide

## Total Harmonic Distortion (THD)

### From frequency domain (recommended)

```
THD (%) = sqrt(V2² + V3² + V4² + ... + VN²) / V1 * 100
```

Where V1 = RMS of fundamental, V2..VN = RMS of harmonics.
N should be at least 10 harmonics (up to 10× fundamental).

### From time domain (THD+N)

```
THD+N (%) = sqrt(V_rms² - V1_rms²) / V1_rms * 100
```

## Required parameters
- Fundamental frequency (f0)
- Number of harmonics included in THD computation
- Window type (if using FFT-based THD)
- Whether noise is included or excluded (THD vs THD+N)

## Common pitfalls
- Missing the fundamental amplitude due to spectral leakage (use windowing)
- Not including enough harmonics (stop before noise floor dominates)
- Including DC component in harmonic sum
- Confusing THD (harmonics only) with THD+N (harmonics + noise)
- Different reporting conventions (%-of-fundamental vs dBc)

## Output format
```
THD (H2-H10, freq-domain): X.XX %
Individual harmonics:
  H2:  X.XX %  at 2*f0
  H3:  X.XX %  at 3*f0
  ...
Fundamental amplitude: X.XXX V RMS
Window: Blackman-Harris 7-term, Δf = Y.Y Hz
```
