# CQN Calibration Rules

Rules for documenting and reporting calibration in measurement systems.

---

## Required fields

Every calibrated measurement must document:

| Field | Description | Example |
|---|---|---|
| **Offset calibration** | Zero-input offset correction | `Offset = 5 LSB at 0 V input` |
| **Gain calibration** | Scale factor from raw to physical | `Gain = 3.30 V / 4096 * shunt 0.01 Ω` |
| **Nonlinearity correction** | Any higher-order correction applied | `2nd-order polynomial fit: I = a2·code² + a1·code + a0` |
| **Calibration source** | Reference instrument or source used | `Fluke 5700A, last cal 2026-05` |
| **Calibration date** | When the calibration was performed | `2026-06-01` |
| **Valid range** | Range over which calibration is valid | `0–3.3 V input, 0–50°C` |

## Rules

1. **State the calibration formula explicitly.** Do not leave the conversion
   from raw ADC codes to physical units implicit.

2. **Separate calibration from measurement.** The calibration constants should
   be determined and reported separately from the measurement results.

3. **Report residuals.** After calibration, report the residual error
   (e.g. fit residuals, max deviation from reference).

4. **Temperature and drift sensitivity.** If the calibration is temperature-
   sensitive, note the temperature range over which it is valid.

5. **Recalibration interval.** If known, state the recommended recalibration
   interval.

## Common patterns

### Two-point calibration (offset + gain)

```
Corrected_Value = (Raw_Code - Offset) × Gain
Offset = 5 LSB (measured at 0 V)
Gain = 3.3 V / 4096 = 0.8057 mV/LSB
```

### Multi-point calibration (nonlinear correction)

```
Corrected_Value = a0 + a1·Raw + a2·Raw² + ...
Coefficients from least-squares fit to N reference points.
```
