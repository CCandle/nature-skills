# cqn-lab-record

Turn free-form experiment notes into structured, traceable lab records.

## Usage

Describe what you did in the lab. The skill will structure it:

> Today I tested the ADC at 0V input. Got 5 LSB offset. Changed Vref from
> board LDO to external reference, offset dropped to 1 LSB.

Output: formatted lab record with Metadata, Setup, Observation, Diagnosis
(with [CF]/[RH]/[UG] tags), and Decision (Keep/Change/Rollback).

## Key rules

- Guesses are not facts — they get tagged `[RH]` or `[UG]`
- Waveform claims need evidence references
- Decisions must be explicit
