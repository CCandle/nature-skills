# Thermal Experiment Design

Applicable to thermal characterisation of power electronics, heat sinks,
photovoltaic modules, and embedded systems.

## Test Scenarios

### 1. Steady-state thermal resistance
- Apply known power dissipation → wait for thermal equilibrium
- Measure: junction/case temperature, ambient temperature
- Compute: R_th_JA = (T_j - T_A) / P

### 2. Thermal time constant
- Step power input → record temperature rise vs time
- Fit to first-order model: T(t) = T_final * (1 - e^(-t/τ))
- Parameters: τ (time constant), R_th, C_th

### 3. PV panel snow melting / de-icing
- Apply heating power to panel → record surface temperature and ice thickness vs time
- Parameters: ambient temp, wind speed, irradiance, power density
- Measure: melting rate, power consumption, temperature uniformity

## Required parameters
- Ambient temperature (°C)
- Cooling method (natural convection / forced air / liquid)
- Heat sink specs (material, fin geometry, thermal pad)
- Thermal interface material and thickness
- Power dissipation (W)
- Measurement point locations (T_c, T_a, T_case)

## Common pitfalls
- Thermocouple placement error (not at junction)
- Thermal mass of measurement probe affecting time constant
- Insufficient settling time before recording
- Ignoring radiation at high temperature (>100°C)
- Self-heating of the temperature sensor

## Output requirements
- Temperature vs time plot
- R_th and τ values with uncertainty
- Comparison to datasheet or simulation
- Steady-state confirmation criteria (ΔT < 0.1°/min for 5 min)
