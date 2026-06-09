# Claim-Preserving Polish

Rules for polishing without changing the strength of claims.

## Before and after comparison

Before: "The ADC exhibited significant performance improvement with the
external reference."
After: "The ADC ENOB increased from 9.2 to 10.8 bits when the Vref was
switched from the board LDO to the ADR4520."

This is acceptable: more specific, same evidence.

Before: "The ADC showed excellent performance."
After: "The ADC achieves state-of-the-art ENOB."

This is NOT acceptable: added "state-of-the-art" claim without evidence.

## Check each change

| Change type | Allowed? |
|---|---|
| "significantly improved" → "increased from X to Y" | Yes |
| "good" → specific metric value | Yes |
| "novel" → "proposed" (unless novelty is explicitly shown) | Yes |
| "is" → "may be" for [RH] claims | Yes |
| "may be" → "is" for [RH] claims | NO |
| Remove limitation statement | NO |
| Add unsupported adjective ("excellent", "state-of-the-art") | NO |
