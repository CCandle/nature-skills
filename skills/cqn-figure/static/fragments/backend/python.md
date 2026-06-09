# Python Backend Quick-Start

Default and required backend. matplotlib + numpy + (optionally) seaborn.

## Environment check

```python
import numpy as np
import matplotlib
import matplotlib.pyplot as plt
```

## Default rcParams

```python
plt.rcParams.update({
    "figure.dpi": 150,
    "font.family": "sans-serif",
    "font.size": 10,
    "axes.labelsize": 11,
    "axes.titlesize": 12,
    "xtick.labelsize": 9,
    "ytick.labelsize": 9,
    "legend.fontsize": 9,
    "lines.linewidth": 1.5,
    "figure.facecolor": "white",
    "axes.facecolor": "white",
})
```

## Export

```python
# Engineering report
fig.savefig("figure.png", dpi=200, bbox_inches="tight")

# High-impact paper
matplotlib.rcParams["svg.fonttype"] = "none"
matplotlib.rcParams["pdf.fonttype"] = 42
fig.savefig("figure.svg", bbox_inches="tight")
fig.savefig("figure.pdf", bbox_inches="tight")
fig.savefig("figure.tiff", dpi=600, bbox_inches="tight")
```

## Key rules

- Use `plt.subplots()` for multi-panel figures.
- Label every axis with the quantity and unit, e.g. "Time (ms)", "Current (A)".
- In engineering-report mode, prefer direct trace labels over legends.
- In high-impact-paper mode, use the palette from `references/api.md`.
