# CQN Measurement Rules

Mandatory fields for any output that references, analyses, or interprets
a measurement. These fields must be declared before drawing conclusions
from the data.

---

## Required declaration

Every data analysis, figure, or report that relies on measured data must
explicitly state:

| Field | Description | Example |
|---|---|---|
| **Sampling rate** | Samples per second (Hz) | `fs = 1 MS/s` |
| **Signal unit** | Physical unit of the measured quantity | `V`, `A`, `°C`, `LSB` |
| **Zero point** | The zero-reference value of the ADC or instrument | `0 V = 2048 (12-bit, bipolar)` |
| **Calibration formula** | How raw ADC codes are converted to physical units | `I = (code - 2048) * 3.3 / 4096 / R_shunt` |
| **Probe position** | Where in the circuit the measurement was taken | `across R_sense, phase A to DC-` |
| **Ground reference** | The common reference point for the measurement | `AGND at PSU return` |
| **Instrument settings** | Coupling, impedance, range, filter | `AC-coupled, 1 MΩ, 10 V/div, 20 MHz BW limit` |
| **DC removal** | Whether DC offset was removed before analysis | `DC removed (mean subtraction)` |
| **Windowing** | Window function applied (if any) | `Blackman-Harris, 7-term` |
| **Conclusion basis** | Whether conclusions are from time-domain, frequency-domain, or both | `Frequency-domain (FFT)` |

## Additional fields by measurement type

### Oscilloscope measurements
- Coupling (AC/DC)
- Bandwidth limit setting
- Probe attenuation factor
- Vertical resolution (bits)
- Timebase setting

### ADC measurements
- ADC resolution (bits)
- Vref voltage and source
- Input voltage range
- Sampling mode (single-ended / differential)
- Anti-aliasing filter cutoff

### Power measurements
- RMS / peak definition (period, window)
- Crest factor
- Power calculation method (averaging / integration / FFT-based)
