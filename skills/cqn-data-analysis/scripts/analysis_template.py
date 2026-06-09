"""
CQN Data Analysis Template
===========================
Minimal template for reproducible analysis.
Fill in parameters before running.

Author: Carlos
Date:   2026-06-09
"""

import numpy as np

# ── Input parameters ──────────────────────────────────────────────────
FS = 1_000_000      # Sampling rate (Hz)
N_SAMPLES = 0       # Number of samples (set after loading data)
SIGNAL_UNIT = "V"   # Physical unit
ZERO_POINT = 0.0    # Zero reference (e.g. 2048 for 12-bit bipolar)
CAL_FORMULA = ""    # Calibration formula: value = (code - zero) * scale

# ── FFT parameters ────────────────────────────────────────────────────
N_FFT = 8192
WINDOW_TYPE = "blackmanharris"
DC_REMOVE = True

# ── Load data ─────────────────────────────────────────────────────────
# data = np.loadtxt("path/to/file.csv", skiprows=1, delimiter=",")
# N_SAMPLES = len(data)
# data = (data - ZERO_POINT) * SCALE

# ── Analysis ──────────────────────────────────────────────────────────
# Implement analysis per the report workflow.
# Print all parameters and results to stdout.
