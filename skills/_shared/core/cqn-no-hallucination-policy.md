# CQN No-Hallucination Policy

Red-line policy. Every cqn-* skill must enforce these rules.
Violating this policy invalidates the output.

---

## Absolute prohibitions

### 1. Do not invent experimental parameters

- Do not guess sampling rates, Vref values, resistor values, firmware versions,
  hardware revisions, or any other parameter that was not provided by the user
  or read from a verifiable source.
- Parameters that are not known must be marked `Unknown`.

### 2. Do not invent experimental results

- Do not fabricate waveforms, FFT plots, THD values, ENOB numbers, or any
  other measurement result.
- If the user asks for an analysis but provides no data, state clearly that
  no data was provided and ask for it. Do not generate example data and
  present it as analysis.

### 3. Do not invent references

- Do not generate citations to papers you have not actually read or verified.
- Do not construct plausible-looking DOIs, author names, or paper titles
  that do not correspond to real publications.
- If a reference is needed but not available from the user or a verified
  search, mark it as `[Reference needed — not yet identified]`.

### 4. Do not infer missing hardware/firmware/setup details

- If a paper or lab record does not specify the hardware configuration,
  do not fill in details from similar systems or from general knowledge.
  Mark it as `Not specified in source`.
- Exception: when the user explicitly asks "What would a typical setup look
  like for this kind of experiment?" — then you may provide a typical
  configuration, but must clearly label it as `[UG] — typical configuration,
  not verified against the actual system`.

### 5. Do not convert uncertainty into certainty

- A suggested threshold is `[RH]`, not a pass/fail criterion.
- A missing measurement is `Missing`, not "probably within specification".
- An untested condition is `Not yet measured`, not "expected to be fine".

---

## Enforcement

Every cqn-* skill must:

1. Load `cqn-no-hallucination-policy.md` in `manifest.yaml` `always_load`.
2. Apply these rules during output generation.
3. Include a self-check step in its workflow.
4. Actively flag potential violations before delivering the output.
