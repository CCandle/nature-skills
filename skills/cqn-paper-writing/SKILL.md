---
name: cqn-paper-writing
description: Draft engineering research papers for IEEE, IET, Elsevier engineering journals, or Chinese core journals. Produces structured drafts with claim-evidence alignment, evidence classification, and explicit missing-data markers. Not for Nature-style promotional writing.
version: 1.0.0
author: Carlos
---

# CQN Paper Writing — Engineering Paper Drafting Skill

This skill drafts engineering research papers. It is oriented toward
IEEE Transactions, IET journals, Elsevier engineering journals, Chinese
core journals, and conference proceedings.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/core/cqn-source-grounding.md`
- `../_shared/core/cqn-no-hallucination-policy.md`
- `../_shared/measurement/cqn-measurement-rules.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Detect the section to draft

The user may request a single section or a full paper outline.
Supported sections:

- `abstract`
- `introduction`
- `related-work`
- `method`
- `experiment`
- `results`
- `conclusion`

### 3. Load the matching fragment

Read the file mapped in manifest.yaml for each detected section.

### 4. Draft

Follow the workflow in `static/core/workflow.md`. For each claim, tag
it with `[CF]`/`[RH]`/`[UG]`. If evidence is missing, write a
placeholder marked `[Missing evidence — not yet measured]`.

### 5. On-demand references

Only open when needed:
- claim-evidence writing patterns → `references/claim-evidence-writing.md`
- method section details → `references/method-section-writing.md`
- experiment section structure → `references/experiment-section-writing.md`
- results presentation → `references/result-section-writing.md`
- limitations writing → `references/limitation-writing.md`
- engineering paper style guide → `references/engineering-paper-style.md`

## Key rules

- Every claim must correspond to evidence. If there is no evidence,
  mark it as `[Missing evidence]`. Do not remove the claim — the
  placeholder signals what needs to be done before submission.
- Use `[CF]` for confirmed facts, `[RH]` for reasonable hypotheses,
  `[UG]` for unverified guesses.
- Method sections must include system architecture, parameters,
  implementation details, and reproducibility information.
- Experiment sections must include platform, sampling rate, unit,
  calibration, and operating conditions.
- Results sections must not exceed what the data supports.
- Do not convert to Nature style. Write for engineering readers.
