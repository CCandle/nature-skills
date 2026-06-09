# CQN Uncertainty Rules

Rules for reporting measurement uncertainty in engineering research.

---

## Required fields

Every quantitative result must report or reference an uncertainty estimate:

| Field | Description | Example |
|---|---|---|
| **Uncertainty source list** | All identified contributors | `Quantisation noise, Vref drift, thermal noise, probe loading` |
| **Type A evaluation** | Statistically analysed components | `Standard deviation of 10 repeated measurements` |
| **Type B evaluation** | Components evaluated by other means | `Datasheet tolerance: Vref ±0.1%` |
| **Combined uncertainty** | Root-sum-square of all components | `uc = 0.15 LSB` |
| **Coverage factor k** | Multiplier for expanded uncertainty | `k = 2 (95% confidence)` |
| **Confidence level** | Stated confidence interval | `95%` |

## When not to overclaim precision

1. **Do not report more significant figures than the uncertainty justifies.**
   If uc = 0.15 LSB, report "5.0 ± 0.3 LSB", not "5.0000 ± 0.3000 LSB".

2. **Do not report uncertainty when only a single measurement was taken**
   without justification. State `Only one measurement; uncertainty not estimated`.

3. **Do not ignore dominant uncertainty contributors.** If Vref noise dominates
   the ADC error budget, list it even if you cannot estimate it precisely.
   Mark it as `[RH] estimated from datasheet`.

## Reporting format

```
Measured value: | Result |
Uncertainty budget: | Contributor | Type | Value | Distribution |
| Q noise | B | 0.29 LSB | uniform |
| Vref drift | B | 0.10 LSB | rectangular |
| Repeatability | A | 0.05 LSB | normal |
Combined standard uncertainty: uc = 0.15 LSB
Expanded uncertainty: U = k·uc = 0.30 LSB (k=2, 95%)
```

## Rule of thumb

If you cannot estimate the uncertainty, state: `Uncertainty not evaluated.
Results should be treated as indicative only [RH].`
