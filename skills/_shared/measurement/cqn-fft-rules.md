# CQN FFT Rules

Mandatory fields for any FFT analysis output.

---

## Required declaration

Every FFT-based analysis must explicitly state:

| Field | Description | Example |
|---|---|---|
| **N (FFT length)** | Number of points in the FFT | `N = 8192` |
| **Window type** | Window function and reason | `Blackman-Harris (7-term), for low sidelobes` |
| **DC removal** | Was DC component removed? | `Yes (mean subtraction before windowing)` |
| **Frequency resolution** | Δf = fs / N | `Δf = 1 MS/s / 8192 = 122.07 Hz` |
| **Amplitude scaling** | Correction factor for window loss and FFT scaling | `Coherent power gain = 0.364; scale factor = 1/0.364` |
| **Spectrum unit** | Amplitude representation | `dBV`, `dBm`, `V RMS`, `V²/Hz` |
| **Normalisation** | How the spectrum was normalised | `Divided by N`, `RMS normalised`, `PSD` |
| **RMS / peak definition** | How RMS/peak values are derived from spectrum | `RMS = sqrt(Σ(bin²)) for fundamental bins` |
| **Conclusion basis** | Which domain the conclusions come from | `Frequency-domain` |

## Optional but recommended

- **Averaging**: Number of FFT averages and overlap percentage
- **Noise floor**: Measured noise floor level and density
- **Spurious signals**: List of non-harmonic spurs and their levels
- **Nyquist compliance**: Whether anti-aliasing filtering was adequate

## Common pitfalls to flag

| Pitfall | Check |
|---|---|
| Spectral leakage from insufficient windowing | Is the window appropriate for the signal type? |
| DC leakage into first few bins | Was DC removed before windowing? |
| Amplitude error from window correction | Was coherent gain correction applied? |
| Implicit zero-padding | Does N reflect actual data length or padded length? |
| RMS calculation on spectrum | Was Parseval's theorem verified? |
