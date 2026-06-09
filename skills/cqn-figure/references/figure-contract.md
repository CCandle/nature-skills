# Figure Contract

Use this reference before writing any plotting code. Required for
high-impact-paper mode; recommended for engineering-report mode.

## Required contract fields

```text
Core conclusion:
Figure archetype:
Mode:
Backend:
Target export:
Panel map:
  a:
  b:
  c:
Evidence hierarchy:
  hero evidence:
  validation evidence:
  controls / robustness:
Parameters:
  fs:
  unit:
  zero point:
  calibration:
  data source:
Reviewer risk:
```

## Archetype selection

| Archetype | When to use |
|---|---|
| Quantitative grid | Mainly numerical comparison across conditions |
| Schematic-led composite | Workflow, mechanism, or setup must be understood first |
| Image plate + quant | Oscilloscope captures, micrographs with quantification |
| Asymmetric mixed-modality | Combines schematic, raster, and quantitative plots |

## Panel logic order

1. Establish the system (schematic or setup)
2. Show the main effect (hero panel)
3. Quantify or validate
4. Robustness and controls
