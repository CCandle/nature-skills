# CQN Engineering Claim Rules

Defines the three-tier evidence classification that every cqn-* skill must
apply to engineering claims. This ensures that confirmed facts, reasonable
hypotheses, and unverified guesses are clearly distinguished.

---

## The three claim types

### `[CF]` — Confirmed Fact

**Definition**: Verified by direct measurement, observation, or simulation with
a known and documented method.

**Requirements**:
- The measurement data, waveform, or simulation result must be traceable
  to a file path, screenshot, or log.
- The measurement conditions (sampling rate, setup, instrument) must be recorded.
- A claim that cannot be traced to evidence is not a Confirmed Fact.

**Examples**:
- "The ADC output at 0 V input was 5 LSB with Vref from the board LDO [CF]."
- "The FFT shows a -60 dB spur at 1 MHz under the stated conditions [CF]."

### `[RH]` — Reasonable Hypothesis

**Definition**: Supported by indirect evidence, physical reasoning, or
simulation, but not yet directly verified by experiment.

**Requirements**:
- The basis for the hypothesis must be stated (which observation led to it).
- The missing verification step must be identified.
- A hypothesis should be testable — if not, say so.

**Examples**:
- "The Vref LDO noise likely dominates the ADC noise floor [RH]."
- "The DMA underflow occurs because the AXI bus is saturated [RH]."

### `[UG]` — Unverified Guess

**Definition**: A speculative explanation with no experimental basis.

**Requirements**:
- Must be explicitly labeled as guess/speculation.
- Should not be presented as a finding or conclusion.
- Best used only as a starting point for designing a test.

**Examples**:
- "Maybe changing the filter cutoff will fix the oscillation [UG]."
- "Perhaps the issue is temperature drift [UG]."

---

## Application rules

1. **Per-claim tagging**: Tag individual claims, not entire sections or documents.
2. **Downgrade on uncertainty**: If evidence is missing or incomplete, downgrade
   the claim one level (CF → RH → UG).
3. **Traceability**: Every `[CF]` claim must be traceable to a specific data file,
   measurement, or screenshot. If not traceable, it is at most `[RH]`.
4. **Report sections**: The Diagnosis section of a lab record should contain
   all three types. A report conclusion should contain primarily `[CF]` claims.
5. **Reviews**: Engineering reviews must flag any claim presented as `[CF]`
   that lacks traceable evidence.
