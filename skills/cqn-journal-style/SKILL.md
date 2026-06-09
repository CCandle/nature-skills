---
name: cqn-journal-style
description: Align manuscript structure, formatting, and citation style to a target journal. Supports IEEE, Nature, Chinese thesis, and generic journal styles. Does not change technical content.
version: 1.0.0
author: Carlos
---

# CQN Journal Style — Style Alignment Skill

Low-frequency skill. Adjusts manuscript formatting, section structure,
heading style, citation format, and figure/table conventions to match
a target journal's requirements.

## Supported styles

- `ieee` — IEEE Transactions style (sections I/II, citations [1], figures Fig. 1)
- `nature` — Nature / Nature Communications style
- `chinese-thesis` — Chinese engineering thesis format
- `generic` — Standard engineering journal format

## Rules

1. Only change structure, formatting, and citation style
2. Do not change technical content, claims, or evidence
3. Do not add or remove content
4. Do not change figure content — only labelling conventions
5. Output a summary of changes made

## Output structure

```text
# Style Alignment Report

## Target journal: [name]

## Changes made
- Heading style: Roman numerals → decimal
- Citations: [1]-[5] → (Author, Year)
- Figure labels: Fig. 1 → Figure 1
- Abstract format: unstructured → structured
- Section order: reorganised per journal template

## Remaining manual tasks
- Verify reference list format against journal guidelines
- Confirm figure resolution meets journal requirements
- Check supplementary material format
```
