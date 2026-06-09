# cqn-experiment-planner

Design structured engineering experiments for power electronics, ADC/DAQ,
FPGA, thermal, and embedded AI systems.

## Usage

Describe your experiment goal to the agent. Example:

> I need to measure the ENOB of a 12-bit SAR ADC at 1 MS/s with a 10 kHz sine
> wave input. Vref=3.3V from board LDO. Help me design the experiment.

The skill will output a complete experiment plan with:
- Objective and hypothesis
- Variables (independent, dependent, controlled)
- Hardware and instrument setup
- Expected data and pass/fail criteria
- Minimal next test
- Lab record template

## Key rules

- No fabricated parameters: unknowns are listed as `Unknown`
- Pass/fail criteria without user input are `[RH]` suggested thresholds
- Prefers minimal decisive experiments over large test campaigns
