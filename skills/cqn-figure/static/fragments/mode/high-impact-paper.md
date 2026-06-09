# High-Impact Paper Mode

Use this mode for journal submissions, conference papers, theses,
and any publication where the figure must meet reviewing standards.

## Emphasis

- **Figure contract** — core conclusion, evidence hierarchy, panel map,
  and export contract must be written before any code
- **Hero panel** — one panel carries the primary evidence; supporting
  panels are visually quieter
- **Restrained palette** — one neutral family, one signal family, one
  accent family. No rainbow colourmaps.
- **Publication-ready export** — SVG with editable text, PDF with
  embedded fonts, TIFF at 600 DPI

## Panel logic

Panels are ordered to tell a story:
1. Establish the system (schematic, setup, method)
2. Show the main effect or primary comparison
3. Quantify / validate
4. Add robustness or controls

## Colour

- Use the palette from `references/api.md`
- Keep the same colour for the same condition across all panels
- Ensure grayscale print remains interpretable

## Export

```python
matplotlib.rcParams["svg.fonttype"] = "none"
matplotlib.rcParams["pdf.fonttype"] = 42
fig.savefig("figure.svg", bbox_inches="tight")
fig.savefig("figure.pdf", bbox_inches="tight")
fig.savefig("figure.tiff", dpi=600, bbox_inches="tight")
```

## QA

Before delivery, run the full QA checklist (`references/qa-contract.md`):
- Core conclusion clear?
- Panel labels correct?
- Statistics defined (n, test, error bars)?
- Source data traceable?
- Image integrity documented?
