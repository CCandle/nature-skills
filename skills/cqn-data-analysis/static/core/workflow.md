# Data Analysis Workflow

## Step 1: Declare input data

| Field | Value |
|---|---|
| File source | |
| Number of samples | |
| Sampling rate | |
| Signal unit | |
| Zero point | |
| Calibration formula | |

## Step 2: Preprocessing

- DC removal (Y/N)?
- Window type and reason
- Any filtering applied

## Step 3: Time-domain analysis

| Metric | Value |
|---|---|
| RMS | |
| Peak (max/min) | |
| DC offset | |
| Crest factor | |

## Step 4: Frequency-domain analysis

| Field | Value |
|---|---|
| N (FFT length) | |
| Window type | |
| DC removal | |
| Frequency resolution | |
| Amplitude scaling | |
| Spectrum unit | |
| Normalisation | |

## Step 5: Domain-specific metrics

Computed per the analysis_type reference.

## Step 6: Interpretation

- What the metrics mean
- How they compare to expectations or specifications
- Any anomalies

## Step 7: Limits of this analysis

- What was not analysed
- What assumptions were made
- What data quality issues exist

## Step 8: Reproducibility notes

How another person could reproduce these results from the same source data.
