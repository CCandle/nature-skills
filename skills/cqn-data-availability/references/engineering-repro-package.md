# Engineering Reproducibility Package

For engineering research, a reproducibility package includes more than
raw data. The following should be inventoried separately.

## Artifact types

| Artifact | Description | Example |
|---|---|---|
| Raw measurement data | Unprocessed oscilloscope CSV, ADC log | `data/adc_test_20260609.csv` |
| Processed data | Filtered, calibrated, or analysed data | `data/processed_enob.csv` |
| Plotting scripts | Scripts that generate published figures | `scripts/plot_fft.py` |
| Analysis scripts | Scripts that compute metrics from raw data | `scripts/calc_enob.py` |
| Firmware source | C/HDL source for embedded firmware | `firmware/adc_driver.c` |
| FPGA bitstream | .bit file or .bin for FPGA configuration | `bitstream/adc_acq.bit` |
| HDL source | VHDL/Verilog source for FPGA logic | `hdl/adc_interface.vhd` |
| Configuration files | JSON/YAML configs for firmware or analysis | `config/adc_params.json` |
| Hardware revision notes | PCB rev, modifications, jumper settings | `docs/hw_rev_notes.md` |

## Minimum metadata per artifact

- File name and format
- SHA256 hash or version
- Software/hardware dependencies
- How to reproduce the artifact (build script, makefile, or instructions)
