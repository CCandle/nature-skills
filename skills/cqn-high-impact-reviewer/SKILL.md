---
name: cqn-high-impact-reviewer
description: Pre-submission reviewer simulation for high-impact journals. Produces 3 reviewer reports and a cross-review synthesis. Inherits structure from nature-reviewer with CQN evidence discipline applied to the review criteria.
version: 1.0.0
author: Carlos
---

# CQN High-Impact Reviewer — Adapter

Low-frequency skill. Simulates peer review for a manuscript targeting
a high-impact journal. Does not make editorial decisions.

## Trigger condition

Only invoke when the user has a complete draft targeting a high-impact
journal and explicitly requests a pre-submission review.

## Output structure

```text
Review setup
- Input scope
- Assessment boundary

Reviewer 1: Technical validity
- Overall assessment
- Technical soundness
- Experimental rigour
- Missing evidence

Reviewer 2: Novelty and significance
- Overall assessment
- Novelty assessment against prior work
- Significance for the field
- Broad interest

Reviewer 3: Presentation and reproducibility
- Overall assessment
- Clarity and completeness
- Reproducibility assessment
- Figure and data presentation

Cross-review synthesis
- Consensus strengths
- Consensus weaknesses
- Must-fix before submission
- Optional improvements
```

## Rules

- Ground every critique in the manuscript, not domain generalities
- Do not invent experiments the authors should have done
- Distinguish: what is missing vs what is incomplete
- Evidence classification: flag claims presented as [CF] that are
  actually [RH] or [UG] in the manuscript
- Do not claim the editor's final decision
