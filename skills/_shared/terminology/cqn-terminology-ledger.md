# CQN Terminology Ledger

Engineering-domain terminology consistency rules for cqn-* skills.
Extends the original `_shared/core/terminology-ledger.md` with
hardware-engineering-specific terms.

---

## Core principle

One concept, one name. Do not use synonyms for technical terms.
Reviewers read inconsistent terminology as careless work.

---

## Common engineering terms — canonical forms

| Term | Canonical form | Do not use |
|---|---|---|
| Analog-to-digital converter | ADC | A/D, A2D, AD converter |
| Digital-to-analog converter | DAC | D/A, D2A, DA converter |
| Reference voltage | Vref | reference, V_ref, VREF |
| Sampling rate | fs | sampling frequency, sample rate, SR |
| Bandwidth | BW | band-width, band width |
| Effective number of bits | ENOB | effective bits, effective resolution |
| Total harmonic distortion | THD | total distortion, THD+N (if different) |
| Root mean square | RMS | rms, R.M.S. |
| Pulse-width modulation | PWM | pulse width modulation, P.W.M. |
| Sinusoidal PWM | SPWM | sine PWM, sine-triangle PWM |
| Space vector PWM | SVPWM | SVM, space vector modulation |
| Processing system (Zynq) | PS | processing system, ARM core |
| Programmable logic (Zynq) | PL | FPGA fabric, programmable logic |
| Direct memory access | DMA | direct memory access, bus mastering |
| User datagram protocol | UDP | User Datagram Protocol (write all-caps) |
| Bitstream | bitstream | bit file, .bit, FPGA config |
| Firmware | firmware | FW, F/W |
| Hardware revision | HW rev | HW version, PCB rev |
| Software commit | SW commit | code version, git hash |
| Config file | config | cfg, configuration |
| Dataset | dataset | data set, DB |
| Model (AI/ML) | model | network, NN (if applies) |
| Inference latency | latency | inference time, forward time |

## Rules

1. **Define every abbreviation at first use.** Example: "Effective number of bits (ENOB)."

2. **Do not switch between full form and abbreviation** once defined.

3. **Keep units and notation identical** across all sections of the same document.

4. **When the user provides a non-standard term**, adopt their term but note
   the canonical form as a reference.

5. **When the same name is used for different concepts** (collision), flag it
   and ask for disambiguation.
