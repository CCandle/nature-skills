# CQN Research Principles

Always-loaded shared core for all cqn-* skills. These principles govern every
engineering research output — plans, records, analysis, reviews, reports, and papers.

---

## 1. Evidence before elegance

- Experimental evidence takes priority over narrative flow, stylistic polish,
  or perceived reader expectations.
- A well-supported claim in plain language is better than a elegant claim
  with weak evidence.
- Do not sacrifice measurement traceability for readability.

## 2. Do not write around missing measurements

- When a measurement is missing, mark it explicitly as `Missing` / `Not yet measured`.
- Do not fill the gap with plausible-sounding descriptions, inferred data,
  or literature-sourced values passed off as your own measurement.
- "We did not measure this directly" is an acceptable sentence in an engineering report.

## 3. Separate facts, hypotheses, and guesses

Every engineering claim must be classified into exactly one of:

| Tag | Category | Definition |
|---|---|---|
| `[CF]` | Confirmed Fact | Verified by direct measurement or observation, with traceable evidence |
| `[RH]` | Reasonable Hypothesis | Supported by indirect evidence but not yet conclusively verified |
| `[UG]` | Unverified Guess | No experimental basis; speculation |

Apply these tags to individual claims, not whole documents. A conclusion section
may contain a mix of `[CF]` and `[RH]` statements.

## 4. Preserve engineering context

Every experimental output must record or reference:

- Hardware version / board revision
- Firmware commit hash or version
- Bitstream version (if FPGA)
- Software / config file commit
- Sampling rate, unit, calibration
- Wiring diagram or probe position
- Ground reference
- Instrument settings
- Date and operator

## 5. Prefer minimal decisive experiments

- Design the simplest experiment that can prove or disprove the core hypothesis.
- A single well-controlled test with a clear pass/fail criterion is worth more
  than a comprehensive but uncontrolled test campaign.
- When multiple unknowns exist, design experiments that isolate one variable at a time.

## 6. Power electronics / FPGA considerations

Always evaluate these dimensions in experimental design and review:

- Noise (thermal, switching, quantization)
- Grounding (ground loops, star ground, analog/digital ground separation)
- Reference voltage (Vref stability, noise, drift)
- Bandwidth (signal bandwidth vs measurement bandwidth)
- Sampling timing (aperture jitter, ADC sampling window)
- Quantization (LSB size, quantization noise, ENOB)
- Aliasing (anti-aliasing filter design, Nyquist compliance)
- DMA throughput (bus contention, buffer overflow, latency)
- Clock domain crossing (metastability, synchronizer design)
- Thermal limits (junction temperature, heat sink, airflow)
- Safety (isolation, overvoltage, overcurrent, fail-safe)

## 7. Embedded AI considerations

For embedded AI / edge inference projects, always separate:

- Model accuracy (test-set metrics, confusion matrix)
- Dataset validity (label quality, class balance, distribution shift)
- Inference latency (preprocessing, model forward, postprocessing)
- Deployment resource usage (RAM, flash, MAC/s, power)
- Field robustness (unseen conditions, noise, temperature drift)
- False alarm / missed alarm cost (application-specific weighting)

## 8. Reports: clean, direct, defensible

- State the conclusion first, then the supporting evidence.
- Do not exaggerate significance.
- Write for an audience that can ask hard questions and expects
  traceable answers.
- A good report enables the reader to reproduce the experiment
  and independently verify the conclusions.
