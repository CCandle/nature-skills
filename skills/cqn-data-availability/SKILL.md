---
name: cqn-data-availability
description: Draft data availability statements and run FAIR checks for engineering research. Supports raw data, processed data, scripts, firmware, bitstream, and config files. Use when preparing a manuscript for submission and needing a data availability statement.
version: 1.0.0
author: Carlos
---

# CQN Data Availability

Low-frequency skill. Drafts data availability statements for journal
submission, with engineering-specific distinction between data types.

## Output structure

```text
# Data Availability Statement

## Data Inventory
- Raw measurement data:
- Processed data:
- Analysis scripts:
- Firmware source:
- Bitstream / FPGA configuration:
- Config files:

## Access Status
- Public repository:
- DOI / accession:
- Embargo:
- Restrictions:
- Available upon reasonable request:

## FAIR Checklist
- Findable: DOI / metadata
- Accessible: repository / protocol
- Interoperable: format / conventions
- Reusable: licence / documentation
```

## Rules

- Do not invent DOIs or repository names
- If data is not publicly available, write the restriction and the
  condition for access
- Distinguish: raw data vs processed data vs scripts vs firmware
- If no data was generated (theoretical paper), write
  `No new data were generated`
- For engineering projects, include firmware and bitstream as data
- Code scripts count as data — include them
