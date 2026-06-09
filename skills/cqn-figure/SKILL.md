---
name: cqn-figure
description: Generate engineering and publication-quality figures from measurement data. Supports dual mode: engineering-report (clear, annotated, unit-complete) and high-impact-paper (panel logic, figure contract, publication-ready SVG/PDF). Use whenever you need to plot waveforms, FFTs, THD, PWM timings, Bode plots, thermal curves, FPGA block diagrams, AI metrics, or any other engineering or scientific data.
version: 1.0.0
author: Carlos
---

# CQN Figure — Dual-Mode Engineering Figure Skill

This skill produces figures from measured or simulated data. It enforces
unit declaration, calibration traceability, and conclusion grounding.
Output quality depends on the selected mode.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/measurement/cqn-measurement-rules.md`
- `../_shared/measurement/cqn-fft-rules.md`
- `static/core/contract.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Resolve the mode — a blocking gate

Determine the figure mode. State the detected mode before proceeding.

- `engineering-report` — emphasis: clarity, annotations, unit completeness,
  reproducibility. Replaces complex styling with clear labelling.
- `high-impact-paper` — emphasis: figure contract, panel logic, colour
  theory, publication-ready SVG/PDF output.

Default: `engineering-report`. If the user explicitly says "for publication",
"Nature style", "paper figure", or names a journal, switch to
`high-impact-paper`.

### 3. Resolve the backend

Python is the default and required backend. Ask only if clearly ambiguous.

- `python` — matplotlib / numpy. Default.
- `r` — ggplot2 / patchwork. Optional; does not block acceptance.

### 4. Load the matching fragments

Read the backend fragment (`static/fragments/backend/python.md` or `r.md`).
Read the mode fragment (`static/fragments/mode/engineering-report.md` or
`high-impact-paper.md`).

### 5. Classify the figure type

Map the request to a figure archetype. Load the matching engineering
reference if available:

- `three-phase-waveform` → `references/engineering/three-phase-waveform.md`
- `adc-raw-code` → `references/engineering/adc-raw-code-comparison.md`
- `fft-thd` → `references/engineering/fft-thd-template.md`
- `pwm-timing` → `references/engineering/pwm-timing-template.md`
- `bode-step` → `references/engineering/bode-step-response.md`
- `thermal-curve` → `references/engineering/thermal-curve-template.md`
- `fpga-block-diagram` → `references/engineering/fpga-block-diagram.md`
- `ai-confusion-matrix` → `references/engineering/ai-confusion-matrix.md`

For types not listed above, use the generic workflow only.

### 6. Build the figure

Apply the loaded material in this order:

1. Figure contract (`static/core/contract.md`) — core conclusion, evidence
   chain, panel map, journal/export contract.
2. Mode-specific guidance — engineering-report or high-impact-paper rules.
3. Backend fragment — environment setup, quick-start, export helpers.
4. Figure-type reference — domain-specific chart conventions and parameters.
5. QA contract (`references/qa-contract.md`) — before final delivery.

### 7. On-demand references

Only open when specifically needed:
- building the figure contract → `references/figure-contract.md`
- pre-delivery QA → `references/qa-contract.md`
- colour palette and helper functions → `references/api.md`
- colour theory, typography, export → `references/design-theory.md`
- reusable layout recipes → `references/common-patterns.md`

## Key rules

- Every figure must be accompanied by the declared parameters: sampling rate,
  signal unit, zero point, calibration formula, data source, and conclusion
  basis (time/frequency/both).
- In `engineering-report` mode, clear annotations and unit labels outrank
  aesthetic polish.
- In `high-impact-paper` mode, run the full figure contract and QA checks
  before delivery.
- Do not generate figures from fabricated data. If no data is provided,
  produce a figure plan with the required data format and parameters.
