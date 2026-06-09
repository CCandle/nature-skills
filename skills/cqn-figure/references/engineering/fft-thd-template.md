# FFT / THD Template

## When to use
Frequency-domain analysis of a signal: harmonic content, THD, noise floor.

## Required parameters
- Sampling rate (fs)
- N (FFT length)
- Window type
- Frequency resolution (Δf = fs / N)
- Spectrum amplitude unit (dBV, V RMS, dBm)

## Axes
- X: Frequency (Hz), log scale for wideband, linear for zoomed
- Y: Magnitude (dBV or V RMS), log scale

## Recommended layout
- Single panel with fundamental and harmonics marked
- Noise floor indicated with a dashed line or shaded region
- If comparing before/after, use overlaid traces or side-by-side panels

## Annotations
- Fundamental frequency and amplitude
- Harmonic markers (H2, H3, ... Hn) with amplitudes
- THD value in caption or text box
- Noise floor level
- Frequency resolution (Δf)

## Example caption
"FFT of phase A current at 50 Hz fundamental, 10 kHz switching.
N = 8192, Blackman-Harris window, Δf = 122 Hz. THD (H2-H10) = 2.3 %.
Noise floor = -90 dBV."
