# Experiment Record to Progress Narrative

Converting raw lab records into readable progress text.

## Pattern

Raw record: "Tested ADC with LDO Vref → 5 LSB offset.
Changed to external Vref → 1 LSB offset. Didn't test temp drift."

Report prose: "The ADC offset was measured as 5 LSB with the board
LDO Vref and 1 LSB with an external reference [CF]. Temperature drift
has not yet been characterised."

## What to extract

| From lab record | To report section |
|---|---|
| Metadata (date, hardware, firmware) | Experimental Platform |
| Observation (expected vs actual) | Key Results |
| Diagnosis ([CF]/[RH]/[UG]) | Key Results or Failure Cases |
| Decision (Keep/Change/Rollback) | Current Progress |
| Next test | Next Steps |

## What not to include

- Detailed instrument settings (keep in the lab record, reference it)
- Step-by-step debugging that did not lead to a conclusion
- Operator name and exact timestamps (unless needed for traceability)
