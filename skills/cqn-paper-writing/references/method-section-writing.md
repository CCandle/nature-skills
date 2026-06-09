# Method Section Writing

## Engineering-specific patterns

### Hardware description
- Use block diagrams with labelled components
- State part numbers for key components (ADC, reference, FPGA)
- Include a table of operating conditions

### Firmware description
- Describe the state machine or control flow
- Highlight critical sections, ISR design, and shared data protection
- State the programming language, compiler version, optimisation flags

### FPGA description
- List clock domains and their frequencies
- Describe CDC strategy (synchronisers, FIFOs)
- Report resource utilisation (LUT, FF, BRAM, DSP)
- State toolchain version and build settings
