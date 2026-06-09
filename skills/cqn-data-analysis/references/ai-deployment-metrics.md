# AI Deployment Metrics

Metrics for evaluating embedded AI models on target hardware.

## Latency

| Metric | Definition |
|---|---|
| Per-sample latency | Time from input ready to output ready (ms) |
| Throughput | Samples processed per second (samples/s) |
| Latency tail | p99 or max latency over N runs |
| Pipeline latency | Preprocess + inference + postprocess |

## Resource usage

| Resource | Unit | Example |
|---|---|---|
| RAM | KB / MB | Model weights + activations + workspace |
| Flash / ROM | KB / MB | Stored model + runtime |
| MACs | operations/sample | MACs per inference @ batch=1 |
| Power | mW | Active / idle / peak |

## Accuracy and robustness

| Metric | Definition |
|---|---|
| Accuracy | (TP + TN) / (TP + TN + FP + FN) |
| Precision | TP / (TP + FP) |
| Recall | TP / (TP + FN) |
| F1 score | 2 * P * R / (P + R) |
| Confusion matrix | Full N×N table |
| False alarm rate | FP / (FP + TN) |
| Missed alarm rate | FN / (FN + TP) |

## Required parameters
- Test dataset size and source
- Train/validation/test split
- Number of repeated runs with different seeds
- Hardware platform, clock speed, memory configuration
- Quantisation format and calibration method
- Operating temperature range (for robustness)

## Common pitfalls
- Reporting latency without distinguishing 1st vs subsequent inferences (cache effects)
- Reporting accuracy on clean dataset only (no field noise / drift)
- Not separating preprocessing from model inference in timing
- Confusing model accuracy with deployment accuracy (quantisation loss)
- Insufficient warmup before timing measurement
