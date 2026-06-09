---
name: cqn-paper2ppt
description: Build structured presentation decks from papers, experiment records, reports, or project notes. Supports paper group meetings, experiment progress reviews, stage reviews, and defense presentations. Outputs slide outline with speaker notes and optional python-pptx export instructions. Use whenever you need to turn research material into a presentation.
version: 1.0.0
author: Carlos
---

# CQN Paper-to-PPT — Engineering Presentation Skill

This skill builds presentation decks for engineering research contexts.
It is not for marketing or commercial presentations — it serves oral
research communication.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-engineering-claim-rules.md`
- `../_shared/core/cqn-no-hallucination-policy.md`
- `../_shared/terminology/cqn-terminology-ledger.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Detect the deck type

- `paper-group-meeting` — journal club or paper reading presentation
- `experiment-progress` — weekly/biweekly experiment update
- `stage-review` — end-of-phase milestone review
- `defense` — thesis or project defense

State the detected type briefly before designing slides.

### 3. Load the matching fragment

Read the file mapped in manifest.yaml for the detected deck type.

### 4. Build the deck outline

Follow the slide structure in the deck-type fragment. Each slide should
answer one question. Add speaker notes for key talking points.

### 5. Build evidence slides

For slides that present results:
- Reference the data source, lab record, or paper figure
- Declare measurement parameters: sampling rate, unit, calibration
- In paper group meetings, include a Missing Reproducibility slide

### 6. On-demand references

Open deeper references only when needed:
- figure extraction and captioning → `references/figure-to-slide.md`
- experiment platform description → `references/experiment-platform-slide.md`
- evidence tables → `references/evidence-slide.md`
- speaker notes writing → `references/speaker-notes.md`
- python-pptx export → `references/pptx-export-guidelines.md`
- slide structure patterns → `references/slide-structure.md`

### 7. Export

Default output: structured slide outline with speaker notes in markdown.
If the user explicitly requests a .pptx file, provide python-pptx code
with installation instructions (python-pptx is not pre-installed).

## Key rules

- One slide, one question. Do not pack multiple messages onto one slide.
- Every conclusion slide must reference its evidence source.
- Experimental data slides must declare sampling rate, unit, calibration,
  and data source in the slide text or speaker notes.
- For paper PPTs, include a slide titled "Missing Reproducibility Information".
- Speaker notes are mandatory for every slide.
- Do not fabricate data for slides. If data is unavailable, the slide
  title should state "Not yet measured" or "Data pending".
