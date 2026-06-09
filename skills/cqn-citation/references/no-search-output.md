# No-Search Output Format

When no search tool is available, do NOT output fabricated references.

## Correct no-search output

```md
## Claim: ADC ENOB is limited by Vref noise in SAR converters

- Required support type: Direct experimental evidence or application note
- Preferred source tier: IEEE journal on ADC characterisation (TIM, TCAS) or TI/ADI application note
- Search keywords: "SAR ADC Vref noise ENOB", "reference voltage noise effective number of bits"
- Must verify: That the paper addresses SAR topology, similar sampling rate, and Vref noise as explicit variable
- Alternative: If an application note is preferred, search for "TI Vref noise SAR SLAA"
- Citation status: Not searched — user must provide source
```

## Incorrect output (prohibited)

```md
## Claim: ADC ENOB is limited by Vref noise in SAR converters

- Suggested citation:
  - [1] J. Smith, "Analysis of Vref Noise in SAR ADCs," IEEE Trans. Instrum. Meas., 2024.
```

(Prohibited because the citation is fabricated — not verified by search.)
