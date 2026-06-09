# Evidence to Report: Claim Structuring

How to turn experimental evidence into report text.

## Mapping claims to evidence

| Claim type | What it looks like in the report | Evidence required |
|---|---|---|
| `[CF]` Confirmed fact | "ADC offset was 5 LSB at 0 V input" | Lab record entry, data file, screenshot |
| `[RH]` Reasonable hypothesis | "Vref LDO noise likely limits ENOB to ~10 bit" | Datasheet analysis, indirect measurement |
| `[UG]` Unverified guess | "The oscillation may be caused by gate drive ringing" | No evidence yet |

## Building an evidence table

```
| # | Claim | Evidence source | Tag |
|---|---|---|---|
| 1 | ADC offset = 5 LSB | lab-record-20260609.csv, row 100-200 | [CF] |
| 2 | Vref noise dominant | ADS7886 datasheet §6.3, Vref noise 100 μVpp | [RH] |
```

## Rules

- A claim without a traceable evidence source is at most `[RH]`
- If you cannot point to a specific data file or lab record entry,
  it is not `[CF]`
- When in doubt, downgrade the claim tag one level
