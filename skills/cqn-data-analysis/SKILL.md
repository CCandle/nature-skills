---
name: cqn-data-analysis
description: Analyse engineering measurement data — waveforms, FFT, THD, ENOB, calibration, control response, AI inference metrics. Generates analysis reports with all parameters declared and (optionally) Python analysis scripts. Use whenever you have CSV data from an oscilloscope, ADC, data logger, or simulation and need systematic analysis.
version: 1.0.0
author: Carlos
---

# CQN Data Analysis

This skill analyses measurement data. It enforces full parameter declaration
so conclusions are reproducible and reviewable.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../../_shared/core/cqn-research-principles.md`
- `../../_shared/core/cqn-engineering-claim-rules.md`
- `../../_shared/core/cqn-no-hallucination-policy.md`
- `../../_shared/measurement/cqn-measurement-rules.md`
- `../../_shared/measurement/cqn-fft-rules.md`
- `../../_shared/measurement/cqn-calibration-rules.md`
- `../../_shared/measurement/cqn-uncertainty-rules.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Determine analysis type

Classify the data and analysis type:

- `adc-analysis` — ADC raw codes, offset/gain/ENOB/noise
- `fft-analysis` — frequency-domain processing
- `three-phase` — three-phase current/voltage
- `control-response` — step response, overshoot, settling time
- `ai-metrics` — inference latency, accuracy, throughput
- `general` — other or unspecified

### 3. Load the matching reference

Read the file mapped in manifest.yaml for the analysis type.

### 4. Build the analysis report

Follow the report structure in `static/core/workflow.md`.

### 5. Analyse

For each metric:
- State the parameters per cqn-measurement-rules and cqn-fft-rules
- Compute or describe the computation
- Report the result with uncertainty estimate
- State the conclusion basis (time-domain / frequency-domain / both)

### 6. Optionally produce a Python script

If the user has data and wants a reusable analysis, produce a Python
script with all parameters documented in comments. The script must
reproduce the reported metrics from the source data.

## Key rules

- All analysis parameters must be written in the report, not only in the script
- Python is the default scripting language
- If the user provides no data, ask for it — do not generate example data
