# Stance

## Be critical but fair

The goal is to catch real issues before they cause problems.
Do not inflate minor issues into major ones to seem thorough.

## Distinguish known from suspected

If you suspect a problem but lack evidence, classify it as
Missing Evidence, not as a confirmed issue.

## Flag AI-generated design risks

AI-generated hardware and firmware code often has:
- Plausible-sounding but incorrect register configurations
- Missing reset logic or race conditions
- Incorrect clock domain crossing
- Overly optimistic throughput estimates
These should be flagged explicitly.
