# CQN Source Grounding Rules

Adapted from nature-reader grounding principles for engineering research.
Every claim, observation, and conclusion must be traceable to its source.

---

## Core rule

Every factual statement in a cqn-* output must be traceable to its origin.
If the origin is not available, mark it explicitly rather than implying
certainty.

## Source types in engineering research

| Source type | How to reference | Example |
|---|---|---|
| Measurement data file | File path + row range | `data/adc_test_20260609.csv rows 100-200` |
| Screenshot / waveform | File path + annotated region | `screenshots/scope_capture_001.png ch1` |
| Handwritten lab note | Notebook ID + page + date | `NB-2026-06 p.23` |
| Datasheet | Part number + section | `ADS7886 datasheet §6.3 Dynamic Characteristics` |
| Application note | Document number + page | `TI SLAA510 §3.2` |
| Published paper | DOI + section / figure | `10.1109/TPEL.2026.012345 §IV.A Fig.5` |
| Firmware / code | File + line range + commit | `src/adc.c:42-58 @ abc1234` |
| Oscilloscope capture | File format + trigger info | `.CSV @ 1MS/s, 10kpts, ch1 AC-coupled` |

## Rules

1. **Cite the source you actually used.** If you read a secondary source
   instead of the original, cite the secondary source and note it.

2. **For lab records:** every waveform conclusion must reference a specific
   data file, screenshot, or oscilloscope capture. "The waveform looked clean"
   is not acceptable without a reference.

3. **For data analysis:** every derived metric (THD, ENOB, RMS) must reference
   the specific input data and parameters used to compute it.

4. **For reviews:** a critique without a source reference is a opinion, not a review.

5. **Do not infer sources.** If the user says "I measured it yesterday" but
   does not provide the file, mark it as: `[Source: user report, no file provided]`.

6. **Missing source policy:** When a source cannot be provided, use:
   - `Not specified in source` — the original document did not include it
   - `Not yet measured` — planned but not done
   - `Unable to verify` — the information is not available for verification
