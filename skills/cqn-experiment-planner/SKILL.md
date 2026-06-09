---
name: cqn-experiment-planner
description: Design engineering research experiments for power electronics, ADC, FPGA, thermal, and embedded AI systems. Produces structured plans with explicit hypotheses, variables, pass/fail criteria, and minimal next tests. Use whenever you need to design a test, plan a measurement campaign, or verify a hypothesis in a lab setting.
version: 1.0.0
author: Carlos
---

# CQN Experiment Planner

This skill produces structured engineering experiment plans. It enforces the
cqn research principles: evidence before elegance, separate facts from
hypotheses, prefer minimal decisive experiments, preserve engineering context.

Do not attempt to reproduce the planning logic from memory. Load the
fragments from disk as described below.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/measurement/cqn-measurement-rules.md`
- `../_shared/templates/cqn-hardware-ledger-template.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Identify the experiment type

Map the user's request to one experiment type. State it briefly before planning:

- `adc-characterisation` — ADC noise, ENOB, offset, gain, linearity
- `power-electronics` — PWM, SPWM, SVPWM, inverter, converter
- `fpga-test` — PS-PL communication, DMA, clock domain, throughput
- `thermal-experiment` — heat transfer, thermal resistance, time constant
- `embedded-ai` — inference latency, accuracy, resource usage
- `general` — other types of engineering experiments

### 3. Load the matching reference

Read the file mapped in manifest.yaml for the detected experiment type.
If the type is `general`, skip this step and use the core workflow only.

### 4. Build the plan

Apply the loaded material in this order:

1. Core stance — surface known unknowns before planning
2. Workflow — follow the 8-step planning sequence
3. Experiment-type reference — domain-specific design patterns
4. Cross-check: pass/fail criteria, unknowns, safety

### 5. On-demand references

Open deeper references only when a step needs them:
- safety checklist before finalising a high-voltage experiment
- ADC design patterns for ADC-specific noise budgeting
- FPGA test plan for DMA throughput estimation

## Output format

Always output a complete experiment plan in the structure defined in
`static/core/workflow.md`. Do not skip sections. Use `Unknown` / `Not specified`
for missing information.

## Key rules

- Do not invent hardware parameters. Unknowns must be listed.
- Pass/fail criteria: if the user did not provide them, propose a
  Suggested threshold and mark it `[RH]`.
- Prefer the minimal experiment that can prove or disprove the hypothesis.
- Include the lab record template section so the user can fill it during
  the experiment.
