# Thermal Curve Template

## When to use
Temperature rise, thermal resistance characterisation, or cooling curves.

## Required parameters
- Power dissipation (P, W)
- Temperature measurement points (T_case, T_ambient)
- Time vector for transient measurements
- Thermal resistance reference (if characterising)

## Axes
- X: Time (min or s) for transient; Power (W) for steady-state
- Y: Temperature (°C) or Temperature rise (ΔT, °C)

## Recommended layout
- Transient: temperature vs time with power step indicated
- Steady-state: temperature rise vs power (linear fit gives R_th)
- Multiple curves: compare different cooling methods or materials

## Annotations
- Steady-state temperature
- Time constant (τ) for exponential fit
- Thermal resistance (R_th_JA) value
- Ambient temperature

## Example caption
"Heatsink temperature rise at P = 50 W. Ambient = 25 °C.
τ = 180 s, R_th_JA = 2.1 °C/W. Natural convection, no airflow."
