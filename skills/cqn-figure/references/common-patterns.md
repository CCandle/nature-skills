# Common Patterns

Reusable layout and encoding patterns for engineering figures.

## Pattern 1: Three-phase time-domain

```
fig, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True, figsize=(6, 5))
ax1.plot(t, ia, color=ENG_COLORS["phase_a"], label="Phase A")
ax2.plot(t, ib, color=ENG_COLORS["phase_b"], label="Phase B")
ax3.plot(t, ic, color=ENG_COLORS["phase_c"], label="Phase C")
ax3.set_xlabel("Time (ms)")
fig.text(0.04, 0.5, "Current (A)", va="center", rotation="vertical")
```

## Pattern 2: FFT with harmonic markers

```
fig, ax = plt.subplots(figsize=(6, 3))
ax.semilogy(freq, mag)
for h_idx, h_freq in enumerate(harmonic_freqs, 2):
    ax.axvline(h_freq, color="gray", linestyle="--", alpha=0.5)
    ax.text(h_freq, peak_mag, f"H{h_idx}", fontsize=8)
ax.set_xlabel("Frequency (Hz)")
ax.set_ylabel("Magnitude (dBV)")
```

## Pattern 3: Before/after comparison

```
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7, 3), sharey=True)
ax1.plot(t, before, color=ENG_COLORS["before"])
ax1.set_title("Before")
ax2.plot(t, after, color=ENG_COLORS["after"])
ax2.set_title("After")
ax1.set_ylabel("Voltage (V)")
ax2.set_xlabel("Time (ms)")
```

## Pattern 4: Bode magnitude + phase

```
fig, (ax_mag, ax_phase) = plt.subplots(2, 1, sharex=True, figsize=(6, 4))
ax_mag.semilogx(f, mag_dB)
ax_mag.set_ylabel("Gain (dB)")
ax_phase.semilogx(f, phase_deg)
ax_phase.set_ylabel("Phase (°)")
ax_phase.set_xlabel("Frequency (Hz)")
```
