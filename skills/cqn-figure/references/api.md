# API Reference — CQN Figure

Python constants, palettes, and reusable helpers.

## Engineering palette

```python
# Trace colours for engineering-report mode
ENG_COLORS = {
    "phase_a": "#1f77b4",  # blue
    "phase_b": "#d62728",  # red
    "phase_c": "#2ca02c",  # green
    "before":  "#1f77b4",
    "after":   "#d62728",
    "input":   "#7f7f7f",
    "output":  "#1f77b4",
}
```

## Publication palette

```python
PUB_COLORS = {
    "blue_main":      "#0F4D92",
    "blue_secondary": "#3775BA",
    "green":          "#8BCF8B",
    "red":            "#B64342",
    "neutral_light":  "#CFCECE",
    "neutral_mid":    "#767676",
    "neutral_dark":   "#4D4D4D",
    "gold":           "#FFD700",
    "teal":           "#42949E",
    "violet":         "#9A4D8E",
}
```

## Helpers

```python
def label_axis(ax, quantity, unit):
    """Label an axis with quantity and unit."""
    ax.set_xlabel(f"{quantity} ({unit})")

def add_trace_label(ax, text, x, y, **kwargs):
    """Add a direct label near a trace."""
    ax.annotate(text, xy=(x, y), fontsize=8,
                ha="center", va="bottom", **kwargs)

def mark_peak(ax, x, y, label=None):
    """Mark a peak with a point and optional label."""
    ax.plot(x, y, "v", color="black", markersize=6)
    if label:
        ax.annotate(label, (x, y), textcoords="offset points",
                    xytext=(0, 10), ha="center", fontsize=8)
```
