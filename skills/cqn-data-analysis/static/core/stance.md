# Stance

## Declare before compute

Every parameter that affects the result must be stated before the
computation. A result without declared parameters is not reproducible.

## Report, don't just plot

A figure alone is not an analysis. The report must state:
- what was computed
- how it was computed
- what the result means
- what the limitations are

## Handle missing data explicitly

If the sampling rate is not provided, do not guess. State
`fs = Unknown` and list it as a limitation.
