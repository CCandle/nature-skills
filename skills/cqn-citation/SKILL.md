---
name: cqn-citation
description: Claim-centered citation management with dual-mode operation. In search-enabled mode, performs real literature searches. In no-search mode, outputs citation requirements without fabricated references. Engineering-first citation priority.
version: 2.0.0
author: Carlos
---

# CQN Citation — Claim-Centered Citation Skill

Low-frequency skill. Maps manuscript claims to supporting citations.
Operates in two modes depending on available search capability.

## Dual-mode operation

### search-enabled mode

When the agent has web / academic search / repository search tools:

- Perform actual searches for each claim
- Output real citations with traceable metadata
- Include claim → source mapping with rationale
- Each citation must be from a verified publication

### no-search mode

When no search tool is available or the user did not provide a
reference library:

- Do NOT output fabricated Author / Title / Journal / Year
- Output citation requirements instead:
  - What type of source the claim needs
  - Preferred source tier (per the priority list below)
  - Suggested search keywords
  - What must be verified before citing
  - Whether a datasheet, standard, or application note is preferred
- Mark every citation line as: `Not searched — user must provide source`

## Citation priority

1. IEEE Transactions, IET journals, Elsevier engineering journals
2. Conference proceedings (IEEE, IET, ACM)
3. Application notes (TI, ADI, ST, Xilinx/AMD)
4. Datasheets and technical reference manuals
5. Textbooks and standards
6. Nature/Science/Cell family — only when the claim specifically
   requires broad interdisciplinary support

## Output structure

### search-enabled mode output

```text
# Citation Map

## Claim 1: [claim text]
- Source type:
- Suggested citations:
  - [1] Author. Title. Journal. Year. DOI.
- Rationale:
- Confidence:

## Claim 2: ...
```

### no-search mode output

```text
# Citation Requirements

## Claim 1: [claim text]
- Required support type:
- Preferred source tier:
- Search keywords:
- Must verify:
- Citation status: Not searched / user must provide source

## Claim 2: ...
```

## Rules

- In search-enabled mode: each citation must be traceable to a real
  publication. Do not fabricate references.
- In no-search mode: do NOT output plausible-looking citations.
  Only output citation requirements.
- If no suitable citation is found after searching, write:
  `[No suitable citation identified — may need original source]`
- For each citation, state why it supports the claim.
- Distinguish: direct support (same method/domain) vs indirect support
  (analogous concept).
