# cqn-engineering-reviewer

Critical engineering review of hardware, firmware, FPGA, and AI designs.

## Usage

Describe what you want reviewed:

> Review this ADC sampling chain: 12-bit SAR, Vref=3.3V from board LDO,
> 1 MS/s, no anti-aliasing filter, input via 1m twisted pair.

Output: structured review with Critical / Major / Minor issues,
Missing Evidence, Risk Register, and Recommended Next Actions.

## Key rules

- Issues must be grounded in engineering principles
- Missing evidence is flagged separately
- AI-generated designs are checked for plausible-sounding errors
