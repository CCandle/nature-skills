# Engineering Term Preservation

Engineering prose contains domain-specific terms that must survive polishing.

## Terms that must NOT be changed

| Type | Examples |
|---|---|
| Variable names | Vref, I_d, f_sw, T_j, R_th |
| Units | V, A, Hz, °C, LSB, dBV |
| Calibration expressions | "I = (code - 2048) × 3.3 / 4096 / 0.01" |
| Component names | ADR4520, ADS7886, Zynq KR260 |
| Abbreviations | ENOB, THD, SNR, SINAD, PWM, SPWM, SVPWM |
| Parameter values | 12-bit, 1 MS/s, 3.3 V, 10 kHz |

## When a change would alter engineering meaning

- "1 MS/s" → "one million samples per second" ✓ (different form, same meaning)
- "sampling rate" → "measurement frequency" ✗ (different meaning)
- "12-bit ADC" → "high-resolution converter" ✗ (lost specification)

## Rule

If in doubt about whether a change preserves engineering meaning,
keep the original term and flag the uncertainty.
