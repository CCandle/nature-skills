---
name: cqn-report-writing
description: Write structured engineering research reports for group meetings, stage reports, project proposals, and project summaries. Enforces evidence classification, separates known from unknown, and produces direct, defensible prose. Use whenever you need to turn experiment records and analysis into a report for your supervisor, group meeting, or project review.
version: 1.0.0
author: Carlos
---

# CQN Report Writing

This skill produces structured engineering research reports. It is not for
polished publication prose — it is for communicating progress, results,
failures, and next steps clearly to an engineering audience.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/core/cqn-no-hallucination-policy.md`
- `../_shared/measurement/cqn-measurement-rules.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Detect the report type

Determine what kind of report is needed:

- `group-meeting` — weekly or biweekly progress update, focus on what was
  tried, what worked, what failed, what's next
- `stage-report` — end-of-phase summary for a project milestone
- `proposal` — project proposal or thesis proposal (开题报告)
- `project-summary` — final project wrap-up

State the detected type briefly before drafting.

### 3. Load the matching fragment

Read the file mapped in manifest.yaml for the detected report type.
This provides the type-specific structure, emphasis, and tone guidance.

### 4. Build the report

Apply the loaded material in this order:

1. Core stance — direct, defensible, evidence-classified
2. Report-type fragment — specific structure for this type
3. Workflow — the 8-step drafting sequence
4. Cross-check: claim evidence, unknowns, next steps

### 5. On-demand references

Open deeper references only when a step needs them:
- turning raw experiment records into report text → `references/experiment-record-to-progress.md`
- writing failure cases and lessons learned → `references/failure-case-writing.md`
- planning credible next steps → `references/next-step-planning.md`
- structuring evidence claims → `references/evidence-to-report.md`

## Output format

Always produce a report with the sections defined in `static/core/workflow.md`.
Use `Unknown` / `Missing Evidence` for information not available.

## Key rules

- Every claim must be tagged with evidence type: `[CF]` / `[RH]` / `[UG]`
- Missing experiments are `Missing Evidence`, not swept under the rug
- Style: direct, concise, defensible — not promotional
- Intended audience: supervisor, group members, project reviewers
