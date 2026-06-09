# AI Deployment Review Checklist

## Model

- [ ] Model format / framework?
- [ ] Quantisation (FP32/FP16/INT8)?
- [ ] Model size vs target device memory?
- [ ] Input preprocessing pipeline?

## Latency

- [ ] Worst-case inference latency?
- [ ] Preprocessing + inference + postprocessing?
- [ ] Frame dropping policy under overload?

## Robustness

- [ ] Tested on edge cases (noise, temperature drift)?
- [ ] False positive / false negative rates?
- [ ] Confidence threshold calibration?

## Deployment

- [ ] Target platform (CPU / GPU / FPGA / NPU)?
- [ ] Power budget?
- [ ] Over-the-air update mechanism?
