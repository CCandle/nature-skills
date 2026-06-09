---
name: cqn-high-impact-writing
description: High-impact journal paper writing adapter. Upgrades engineering drafts or experiment records to Nature Communications / high-impact journal style while preserving CQN evidence discipline. Only trigger when the user explicitly targets a high-impact venue.
version: 1.0.0
author: Carlos
---

# CQN High-Impact Writing — Adapter

This skill adapts engineering paper drafts or experiment records for
high-impact journal submission. It is a low-frequency skill —
it should not replace `cqn-paper-writing` for routine engineering papers.

## Trigger condition

Only invoke when the user explicitly names a high-impact target:
Nature, Nature Communications, Science, Cell, high-impact interdisciplinary
journal, or says "high-impact", "top journal", "冲顶刊".

## Source material

Expects existing material from:
- `cqn-paper-writing` draft
- `cqn-report-writing` progress report
- `cqn-lab-record` + `cqn-data-analysis` + `cqn-figure`

Does not write from scratch without source material.

## Key adaptations from engineering to high-impact

1. **Broad-audience framing** — introduction must be accessible to a
   nonspecialist reader. Add context and motivation.
2. **Claim discipline** — every claim must still be tagged
   [CF]/[RH]/[UG]. High-impact journals do not excuse fabrication.
3. **Figure quality** — figures must follow the high-impact-paper mode
   of `cqn-figure`. Run the full figure contract and QA.
4. **Evidence completeness** — missing evidence is still marked.
   High-impact does not mean hiding limitations.
5. **Engineering accuracy** — do not sacrifice technical accuracy for
   narrative flow. Sampling rates, units, and calibration are still
   required.

## Workflow

1. Load source material
2. Identify the target journal
3. Restructure for broad audience while preserving evidence traceability
4. Run the high-impact-paper figure workflow
5. Review for unsupported claims, missing evidence, and fabricated numbers

## Rules

- Never remove evidence tags [CF]/[RH]/[UG]
- Never fill missing data with inferred values
- Never convert `[RH]` or `[UG]` to implied fact
- Retain engineering parameter tables (sampling rate, calibration, etc.)
