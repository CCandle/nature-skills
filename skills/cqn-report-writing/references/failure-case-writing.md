# Failure Case Writing

How to write about experiments that did not work.

## Purpose

Failure cases are not admissions of incompetence. They are valuable
engineering data that prevent repeat work by yourself and others.

## Structure

```
## Failure: [one-line description]

### Expected
What was supposed to happen.

### Actual
What actually happened.

### Root cause analysis
- Confirmed causes [CF]:
- Suspected causes [RH]:
- Ruled-out causes:

### Recovery
How the issue was resolved or worked around.
```

## Example

```
## Failure: ADC output stuck at full scale

### Expected
ADC reading proportional to input voltage.

### Actual
Output stuck at 4095 (12-bit full scale) regardless of input.

### Root cause analysis
- Confirmed: ADC input pin was shorted to Vref via solder bridge on
  the prototype board [CF]
- Suspected: none — root cause confirmed by visual inspection [CF]
- Ruled-out: ADC chip damage (confirmed functional after removing
  solder bridge) [CF]

### Recovery
Removed solder bridge under microscope. ADC function restored.
Added test point to ADC input pin (change to PCB layout).
```

## Rules

- Do not soften the failure. "A learning opportunity" is less useful
  than "the solder bridge shorted ADC input to Vref"
- Always include the recovery — what was done to fix it
- Tag root cause evidence levels honestly
