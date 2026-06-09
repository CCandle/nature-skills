# ADC Sampling Chain Review Checklist

## Front-end

- [ ] Anti-aliasing filter present?
- [ ] Filter cutoff ≤ fs/2?
- [ ] Filter order adequate for stopband attenuation?
- [ ] Input impedance compatible with signal source?
- [ ] ESD / overvoltage protection?

## Reference voltage

- [ ] Vref source type (LDO / dedicated reference / internal)?
- [ ] Vref noise spec?
- [ ] Vref decoupling adequate?
- [ ] Vref temperature coefficient?

## Sampling

- [ ] Sampling rate vs signal bandwidth (Nyquist)?
- [ ] Aperture jitter specification?
- [ ] Sampling clock jitter?

## Layout

- [ ] Analog/digital ground separation?
- [ ] Vref trace routing (away from switching nodes)?
- [ ] Input signal trace (shielded / differential)?
