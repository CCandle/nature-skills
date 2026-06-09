# Control Response Metrics

## Step response

| Metric | Definition |
|---|---|
| Overshoot | (V_peak - V_final) / V_final * 100% |
| Rise time | Time from 10% to 90% of final value |
| Settling time | Time to stay within ±2% of final value |
| Steady-state error | V_final - V_reference |

## Bandwidth from step response

For a first-order system: BW (Hz) ≈ 0.35 / rise_time
For arbitrary systems: use FFT or swept-sine measurement.
