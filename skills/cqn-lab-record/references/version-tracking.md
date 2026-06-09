# Version Tracking Guidelines

Ensuring firmware/hardware/software versions are traceable in lab records.

## What to track per experiment

| Component | What to record | Where to find it |
|---|---|---|
| Firmware | Git commit hash, build date | `git log -1 --format="%H %ci"` |
| Bitstream | .bit file hash, build timestamp | Vivado report or `sha256sum` |
| Software | Git commit hash, config file path | `git log -1`, `realpath config.ini` |
| FPGA tools | Vivado / Vitis version | `vivado -version` |
| Compiler | ARMCC / GCC version | `armclang --version` or `gcc --version` |
| Board | Board model, silkscreen revision | Physical board inspection |
| Instrument | Model, calibration date | Instrument sticker or menu |

## Lab record conventions

- Record version info **before** the experiment, not after
- If a version changed between experiments, note both versions
- If version is unknown, write `Unknown` — do not guess
- Include version info in every lab record, even for "quick" tests
