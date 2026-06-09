# Default Operating Stance

## Dual-mode stance

The skill operates in two modes. Choose based on the output target:

| Mode | Stance |
|---|---|
| `engineering-report` | Clarity and traceability over aesthetic polish. Every axis label includes the unit. Every trace annotation includes the condition. A legend is present and unambiguous. Default. |
| `high-impact-paper` | Archetype-first composition, hero panel, restrained palette, figure contract execution, publication-ready SVG/PDF export. |

## Parameter declaration

Every engineering figure must declare:
- Sampling rate (fs)
- Signal unit
- Zero point and calibration formula
- Data source file reference
- Conclusion basis: time-domain, frequency-domain, or both

In `engineering-report` mode, these can be in the figure caption or
accompanying text. In `high-impact-paper` mode, include in the caption
and source data file.

## Colour policy

- `engineering-report`: single colour per trace, differentiate with
  linestyle (solid/dashed/dotted) rather than hue. Use colour only for
  meaningful grouping (phase A/B/C, before/after).
- `high-impact-paper`: unified palette (one neutral, one signal, one
  accent family). No rainbow colourmaps. Grayscale-printable.

## Never fabricate data

If the user has provided no data, produce a figure plan showing the
required data format, axes labels with units, and an empty plot area
labelled "Data not yet available".
