# Embedded AI Experiment Design

Applicable to fault diagnosis, anomaly detection, and predictive maintenance
on embedded targets (FPGA, MCU, NPU).

## Test Scenarios

### 1. Inference latency benchmark
- Load model → process a batch of N inputs → measure wall-clock time
- Parameters: model format, quantisation, batch size, clock frequency
- Measure: per-sample latency (ms), throughput (samples/s), latency tail (p99, max)
- Separate: preprocessing, inference, postprocessing

### 2. Accuracy vs deployment trade-off
- Compare model accuracy (FP32 reference) vs quantised/deployed version
- Parameters: quantisation scheme (INT8/FP16), calibration dataset
- Measure: accuracy drop, memory saving, latency improvement

### 3. Field robustness test
- Inject noise, temperature drift, supply variation into input data
- Parameters: noise level, temperature range, voltage tolerance
- Measure: accuracy under stress, false alarm rate shift

## Required parameters
- Target device (CPU/GPU/FPGA/NPU) and clock
- Model architecture and framework
- Input shape, dtype, preprocessing pipeline
- Quantisation method and calibration data
- Deployment toolchain version

## Common pitfalls
- Preprocessing time dominating inference in reported "latency"
- Quantisation calibration on unrepresentative data
- Cache warming not accounted for in first-inference timing
- DRAM bandwidth bottleneck not CPU compute
- Temp/power throttling during sustained inference
- Model accuracy evaluated on clean data only, not field data

## Output requirements
- Latency distribution (min, mean, median, p99, max) over N runs
- Accuracy table: metric x config matrix
- Resource table: RAM/Flash/MAC/power per configuration
- Robustness: accuracy vs noise/temperature curve
