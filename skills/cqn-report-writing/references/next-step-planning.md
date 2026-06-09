# Next Step Planning

Writing concrete, credible next steps.

## Requirements

A good next step is:
1. **Specific** — "Measure THD at 50 Hz fundamental" not "Do more testing"
2. **Evidence-driven** — addresses an unknown or validates a hypothesis
3. **Feasible** — can be done with available equipment and time
4. **Prioritised** — the most important unknown first

## Format

```
## Next Steps

Priority order:
1. [Confirm that the noise floor is limited by Vref] [RH]
   → Replace LDO Vref with ADR4520, re-run ENOB test [1 day]
2. [Check if temperature drift is significant] [Unknown]
   → Heat chamber to 60°C, measure offset shift [2 days]
3. [Validate the anti-aliasing filter design] [CF incomplete]
   → Sweep input frequency from DC to 2*fs, check -3 dB point [half day]
```

## Anti-patterns

| Instead of | Write |
|---|---|
| "Do more tests" | "Measure ENOB at 3 input frequencies: 1 kHz, 10 kHz, 100 kHz" |
| "Investigate the issue" | "Replace Vref from LDO to ADR4520 to isolate noise contribution" |
| "Characterise the system" | "Measure THD as function of output power from 10% to 100% in 10% steps" |
