# QA Contract

Pre-delivery quality checks.

## For engineering-report mode

| Check | Pass condition |
|---|---|
| Axis labels | Quantity and unit present on every axis |
| Legend / trace labels | Each trace is identifiable |
| Data source | Data file or measurement referenced |
| Parameters | fs, unit, zero point, calibration declared in caption |
| Conclusion | Figure clearly supports the stated claim |

## For high-impact-paper mode

All engineering-report checks, plus:

| Check | Pass condition |
|---|---|
| Figure contract | Core conclusion written, panel map complete |
| Panel labels | Lowercase bold, near top-left, ~8 pt at final size |
| Colour | No rainbow colourmaps; grayscale-printable |
| Export | SVG (editable text) + PDF + TIFF 600 DPI |
| Statistics | n, test, error bars defined |
| Source data | Quantitative panels traceable to clean data file |
| Image integrity | Crop, contrast adjustments documented |
| Reviewer risk | What would a skeptical reviewer challenge? |
