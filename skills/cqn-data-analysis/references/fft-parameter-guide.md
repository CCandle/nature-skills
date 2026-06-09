# FFT Parameter Guide

## Choosing N

- N must be ≥ the number of samples available
- N as a power of 2 is faster (FFT) but not required
- Zero-padding to next power of 2 does not improve frequency resolution

## Choosing a window

| Signal type | Recommended window | Reason |
|---|---|---|
| Sinusoid, coherent sampling | Rectangular (no window) | No leakage when coherent |
| Sinusoid, non-coherent | Blackman-Harris (7-term) | Low sidelobes, good for THD |
| Broadband noise | Hann | Good amplitude accuracy |
| Transient | Rectangular | No attenuation of transients |
| Closely spaced tones | Kaiser-Bessel | Adjustable sidelobe level |

## Frequency resolution

```
Δf = fs / N
```

To resolve two tones at f1 and f2, need Δf < |f1 - f2|.

## Amplitude correction

Each window has a coherent gain that reduces the amplitude.
Correct by dividing by the coherent gain factor.

Common factors:
- Hann: 0.5
- Blackman-Harris 7-term: 0.364
- Flat-top: ~0.216 (excellent for amplitude)
