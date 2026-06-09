# cqn-figure

Dual-mode engineering figure skill. Generate publication-ready or
engineering-report figures from measurement data.

## Usage

Provide your data and figure requirements:

> Plot three-phase currents from this CSV. Sampling rate is 10 kHz,
> unit is Amperes. Use engineering-report mode with clear annotations.

Output: figure code and rendered plot with all parameters declared.

## Modes

| Mode | Use case | Emphasis |
|---|---|---|
| `engineering-report` | Lab reports, group meeting, internal docs | Clarity, annotations, units |
| `high-impact-paper` | Journal submission, thesis, conference | Panel logic, colour theory, SVG/PDF |

## Backend

- Python (default) — matplotlib / seaborn / numpy
- R (optional) — ggplot2 / patchwork

## Key rules

- All parameters (sampling rate, unit, calibration) must be declared
- No fabricated data — if no data, produce a figure plan
