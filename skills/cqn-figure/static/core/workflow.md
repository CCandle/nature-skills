# Figure Workflow

## Step 1: Collect input data and parameters

Gather: data file, sampling rate, unit, zero point, calibration formula.
If any are missing, ask or mark as Unknown.

## Step 2: Establish the figure contract

Write the one-sentence core conclusion. Map the evidence to planned panels.
State the mode and backend.

## Step 3: Load the mode fragment

Apply mode-specific rules: annotation density, colour policy, export format.

## Step 4: Load the backend fragment

Set up the plotting environment. Apply the selected backend's quick-start.

## Step 5: Build the figure

1. Create the basic plot with minimal styling.
2. Add annotations: axis labels with units, legend, trace labels.
3. In `engineering-report` mode: prioritise readability over layout.
4. In `high-impact-paper` mode: apply figure contract, panel map,
   colour palette, and sizing.

## Step 6: Declare parameters

Add figure caption or accompanying text declaring: fs, unit, zero point,
calibration, data source, conclusion basis.

## Step 7: QA check

Run the QA checklist (references/qa-contract.md) appropriate to the mode.
- `engineering-report`: verify unit labels, legend, data reference.
- `high-impact-paper`: verify figure contract, export format, resolution.

## Step 8: Export

- `engineering-report`: PNG or PDF with annotations visible at screen size.
- `high-impact-paper`: SVG (editable text) + PDF + TIFF at 600 DPI.
