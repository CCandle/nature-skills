# Three-Phase Imbalance Analysis

## Metrics

```
I_avg = (I_a + I_b + I_c) / 3
Phase imbalance (%) = max(|I_a - I_avg|, |I_b - I_avg|, |I_c - I_avg|) / I_avg * 100
```

## THD per phase

Compute THD for each phase individually.
Report per-phase and average THD.

## Sequence components (optional)

If phasor information is available (magnitude and phase of fundamental):
```
I_zero = (I_a + I_b + I_c) / 3
I_pos  = (I_a + a·I_b + a²·I_c) / 3
I_neg  = (I_a + a²·I_b + a·I_c) / 3
where a = e^(j·120°)
```

Unbalance factor (negative sequence): I_neg / I_pos * 100%
