---
name: cqn-citation
description: Claim-centered citation management for engineering papers. Maps claims to supporting citations from IEEE, IET, Elsevier engineering journals, application notes, and datasheets. Does not default to Nature/Science citations.
version: 1.0.0
author: Carlos
---

# CQN Citation — Claim-Centered Citation Skill

Low-frequency skill. Maps manuscript claims to supporting citations.
Priority: engineering journals and technical documentation over
high-impact general science journals.

## Citation priority

1. IEEE Transactions, IET journals, Elsevier engineering journals
2. Conference proceedings (IEEE, IET, ACM)
3. Application notes (TI, ADI, ST, Xilinx/AMD)
4. Datasheets and technical reference manuals
5. Textbooks and standards
6. Nature/Science/Cell family — only when the claim specifically
   requires broad interdisciplinary support

## Output structure

```text
# Citation Map

## Claim 1: [claim text]
- Source type:
- Suggested citations:
  - [1] Author. Title. Journal. Year.
- Rationale:
- Confidence:

## Claim 2: ...
```

## Rules

- Each citation must be traceable to a real publication
- Do not fabricate references
- If no suitable citation is found, write:
  `[No suitable citation identified — may need original source]`
- For each citation, state why it supports the claim
- Distinguish: direct support (same method/domain) vs indirect support
  (analogous concept)
