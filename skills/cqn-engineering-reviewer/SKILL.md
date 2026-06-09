---
name: cqn-engineering-reviewer
description: Structured engineering review of hardware, firmware, FPGA, sampling chains, power integrity, test point debuggability, and embedded AI deployments. Use when you need a critical engineering assessment before building, after prototyping, or before publishing a design.
version: 1.0.0
author: Carlos
---

# CQN Engineering Reviewer

This skill produces structured engineering reviews. It focuses on practical
risks: noise, grounding, bandwidth, sampling integrity, clock domains, DMA
throughput, thermal limits, safety, and repairability.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/measurement/cqn-measurement-rules.md`
- `../_shared/measurement/cqn-fft-rules.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Determine review type

- `adc-sampling-chain` — ADC front-end, Vref, anti-aliasing
- `power-integrity` — supply rails, decoupling, ground
- `fpga-design` — clock domains, CDC, DMA, resource usage
- `firmware-architecture` — ISR discipline, critical sections, state machines
- `ai-deployment` — latency, throughput, robustness
- `general-hardware` — PCB, test points, connectors, safety

### 3. Load the matching reference

Read the file mapped in manifest.yaml.

### 4. Build the review

Follow the review structure in `static/core/workflow.md`.

### 5. Flag by severity

| Severity | Definition | Action expected |
|---|---|---|
| Critical | Will cause failure or safety hazard | Must fix |
| Major | Significantly degrades performance or reliability | Should fix |
| Minor | Suboptimal but acceptable | Consider fixing |
| Missing Evidence | Cannot assess without more information | Provide evidence |

## Key rules

- Do not invent design issues. If you cannot assess without more info,
  mark as Missing Evidence.
- Ground every issue in engineering principles, not opinion.
- For AI-generated designs, check for hallmarks of plausible-sounding
  but incorrect reasoning (e.g., missing reset logic, incorrect CDC,
  unrealistic throughput claims).
