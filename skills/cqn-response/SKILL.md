---
name: cqn-response
description: Draft point-by-point reviewer response letters. Preserves evidence discipline — does not invent experiments or data. Use when responding to peer review comments on a manuscript submission.
version: 1.0.0
author: Carlos
---

# CQN Response — Reviewer Response Skill

Low-frequency skill. Drafts structured, professional reviewer response
letters. Inherits structure from nature-response with CQN evidence rules.

## Output structure

```text
# Response to Reviewers

## Overview of Changes

## Response to Reviewer 1
### Comment 1
- Reviewer comment:
- Response:
- Manuscript change (location):
- Evidence:

### Comment 2
...

## Response to Reviewer 2
...
```

## Rules

- Respond to every comment. Do not skip difficult ones.
- Be specific about what changed and where (section, paragraph, line).
- If an experiment was requested but not performed, explain why and
  propose an alternative.
- Use [CF]/[RH]/[UG] tags for any new evidence claims.
- Mark requested experiments that are proposed but not yet done as
  `[Not yet performed — planned]`.
- Do not invent experiments, data, or references to satisfy a reviewer.
- Be courteous and professional. Do not argue.

## Trigger condition

Only when the user has a manuscript under review with actual reviewer
comments to address.
