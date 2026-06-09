# Figure Contract Before Plotting

Adapted from nature-figure. Every figure starts from a claim, evidence
hierarchy, and parameter declaration — not from a preferred chart type.

## The five-point contract

1. **Core conclusion**: one-sentence claim the figure must defend.
2. **Evidence chain**: map each panel to the claim; drop panels that do not
   carry unique evidence.
3. **Archetype**: classify as `quantitative grid`, `schematic-led composite`,
   `image plate + quant`, or `asymmetric mixed-modality figure`.
4. **Backend**: Python (default) or R (optional). Exclusive for all drawing,
   previewing, and exporting.
5. **Parameters declaration**: state sampling rate, unit, zero point,
   calibration formula, data source, and conclusion basis before styling.

## Mode-specific rules

In `engineering-report` mode, the contract is lightweight but must still
include items 1, 4, and 5. Items 2 and 3 are recommended but not required.

In `high-impact-paper` mode, all five items are mandatory and the full
`references/figure-contract.md` must be consulted.

## Missing runtime / package rule

If Python is selected but matplotlib or numpy is unavailable, report the
blocker and provide the script + install command. Do not fall back to R
to produce a substitute figure.
