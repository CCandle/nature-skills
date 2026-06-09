# Engineering Report Mode

Use this mode for lab reports, group meeting slides, internal documentation,
and any figure where clarity and reproducibility outrank aesthetic polish.

## Emphasis

- **Clear axis labels** — include the unit in every label: "Time (ms)",
  "Current (A)", "Frequency (Hz)"
- **Trace identification** — prefer direct labels on or near traces rather
  than separate legends. Use linestyle (solid/dashed/dotted) to differentiate.
- **Annotations** — mark key features: peak values, settling time, THD,
  noise floor, switching events
- **Parameter declaration** — include a caption or text block with: fs, unit,
  zero point, calibration, data source

## Colour

- Single colour per trace family; use linestyle to differentiate traces
  within a family
- Reserve colour for meaningful grouping (phase A=blue, B=red, C=green)
- No rainbow colourmaps

## Layout

- Single-column width (3-4 inch) for text embedding
- Minimal whitespace — maximise data-to-ink ratio
- Legend only when direct labelling is not possible

## Export

- PNG at 200 DPI (screen-readable, small file size)
- PDF as needed for embedding in reports

## What not to do

- No figure contract required (but core conclusion should still be clear)
- No multi-panel orchestration unless the data requires it
- No elaborate colour theory or typography tuning
