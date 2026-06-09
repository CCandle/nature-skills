# Firmware and Bitstream Policy

## When firmware/bitstream cannot be shared

If the firmware or bitstream contains proprietary IP, third-party
licensed cores, or export-controlled technology:

- State the restriction explicitly
- Describe the reproducibility impact:
  "The FPGA bitstream includes a third-party FFT core under NDA and
  cannot be shared. The firmware source for the ADC interface is
  available on request."
- Provide as much of the system as possible without violating
  restrictions (e.g., HDL source for non-proprietary modules)
- If nothing can be shared, the data availability statement should
  note this and suggest contacting the authors for collaboration

## When firmware/bitstream can be shared

- Upload to a repository (GitHub, Zenodo, institutional)
- Include build instructions and toolchain version
- Document the target device and required peripherals
