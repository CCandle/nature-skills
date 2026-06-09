---
name: cqn-paper-reader
description: Read and analyse engineering research papers. Extracts method, experimental setup, reproducibility information, and research usefulness. Does not fabricate missing information. Use whenever you need to understand an engineering paper beyond its abstract.
version: 1.0.0
author: Carlos
---

# CQN Paper Reader — Engineering Paper Reading Skill

This skill reads and analyses engineering research papers. It does not
translate or summarise for its own sake — it extracts what is useful
for engineering research: method, experimental parameters, reproducibility,
and gaps.

## Routing protocol

### 1. Load the manifest and core layer

Read [manifest.yaml](manifest.yaml). Then read every file listed under
`always_load`:

- `../_shared/core/cqn-research-principles.md`
- `../_shared/core/cqn-source-grounding.md`
- `../_shared/core/cqn-no-hallucination-policy.md`
- `../_shared/terminology/cqn-terminology-ledger.md`
- `static/core/stance.md`
- `static/core/workflow.md`

### 2. Detect the source type

- `pdf` — selectable-text PDF
- `doi` — DOI to resolve
- `arxiv` — arXiv ID or URL
- `url` — publisher or preprint HTML page
- `text` — pasted text with no retrievable original

### 3. Load the matching fragment

Read the file mapped in manifest.yaml for the detected source type.

### 4. Read and extract

Follow the structured reading workflow in `static/core/workflow.md`.

### 5. Build the reading note

Produce a complete Paper Reading Note with all sections. If a section
cannot be filled because the paper does not provide the information,
write `Missing` / `Not specified` — do not infer.

### 6. On-demand references

Only open when needed:
- detailed output schema → `references/output-spec.md`
- reproducibility checklist → `references/reproducibility-checklist.md`
- handling missing information → `references/missing-information.md`
- method extraction patterns → `references/method-extraction.md`
- experiment parameter extraction → `references/experiment-extraction.md`
- figure interpretation → `references/figure-reading.md`
- evaluating research usefulness → `references/research-usefulness.md`

## Key rules

- If the paper gives it, extract it. If the paper does not give it,
  write `Missing` / `Not specified`. Do not infer.
- Distinguish claims from evidence. A claim without supporting evidence
  in the paper must be noted.
- The output must include a "Missing Reproducibility Information" section.
- The output must include "What is useful for my research" and
  "What is questionable / underspecified" sections.
- Do not produce a summary-only output unless explicitly asked.
- For engineering papers, prioritise extracting: hardware platform,
  firmware version, sampling parameters, calibration, dataset, baseline,
  and ablation studies.
- When the full source is not accessible, operate in partial-source mode
  and explicitly state the reading boundary.
