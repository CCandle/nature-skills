# AI Confusion Matrix / Deployment Metrics Template

## When to use
Displaying model performance: confusion matrix, ROC curve, or
deployment latency/throughput plots.

## Confusion matrix

### Required data
- True labels and predicted labels (or precomputed N×N matrix)
- Class names

### Axes
- X: Predicted class
- Y: True class
- Colour: count or percentage, with colourbar

### Annotations
- Cell values (count or percentage)
- Overall accuracy in caption
- Normalisation: rows (recall) or total (accuracy)

### Recommended layout
- Heatmap with colourbar, diagonal highlighted
- Optional: per-class precision, recall, F1 in a side table

## Deployment latency

### Required data
- Per-inference latency measurements (ms)
- Preprocessing, inference, postprocessing breakdown

### Axes
- X: Sample index or trial number
- Y: Latency (ms)

### Annotations
- Mean, p50, p95, p99 latency lines
- Target latency requirement (if specified)

## Example caption (confusion matrix)
"Confusion matrix for 6-class fault diagnosis model on test set
(N = 1200). Overall accuracy = 94.2 %. Rows normalised by true class."

## Example caption (latency)
"Inference latency distribution on KR260 (1000 runs, INT8 quantised).
Mean = 2.3 ms, p99 = 3.8 ms. Target: 5 ms max."
