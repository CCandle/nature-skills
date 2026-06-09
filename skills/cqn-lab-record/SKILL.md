---
name: cqn-lab-record
description: Convert experiment notes and observations into structured, traceable lab records. Captures hardware version, firmware commit, instrument settings, expected vs actual observations, evidence-classified diagnosis, and decisions. Use whenever you need to document an experiment session, debug a failure, or create a reproducible record of what was done.
version: 1.0.0
author: Carlos
---

# CQN Lab Record

This skill produces structured lab records from free-form experiment notes.
It enforces evidence classification, source grounding, and version tracking.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/core/cqn-source-grounding.md`
- `../_shared/templates/cqn-hardware-ledger-template.md`
- `../_shared/templates/cqn-lab-record-template.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Process the input

Extract all available information from the user's notes. Classify:

- **Given explicitly** — use as stated
- **Implied but not confirmed** — mark as `[RH]`
- **Not mentioned** — mark as `Unknown`

### 3. Build the record

Follow the template in `../_shared/templates/cqn-lab-record-template.md`.
Fill every field that has information. Leave unknowns as `Unknown`.

### 4. Apply evidence classification

In the Diagnosis section, apply `[CF]`/`[RH]`/`[UG]` tags per
`cqn-engineering-claim-rules.md`.

### 5. On-demand references

Only open when needed:
- Waveform evidence guidelines: `references/waveform-evidence.md`
- Decision log patterns: `references/debug-decision-log.md`
- Version tracking: `references/version-tracking.md`

## Key rules

- Do not convert guesses into facts. If the user says "I think it might be X",
  tag it as `[RH]` or `[UG]` depending on supporting evidence.
- Every waveform conclusion must reference a data file, screenshot, or
  oscilloscope capture, or be marked as `No evidence provided`.
- The Decision section must explicitly say Keep / Change / Rollback.
