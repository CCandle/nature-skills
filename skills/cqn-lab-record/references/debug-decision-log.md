# Debug Decision Log Patterns

Patterns for documenting troubleshooting sessions in lab records.

## Binary branch pattern

```
Observation: Symptom X
Test A: Changed parameter P → symptom unchanged [CF]
  → Ruled out: P is not the cause
Test B: Changed parameter Q → symptom changed [CF]
  → Consistent with Q being involved [RH]
Next: Isolate Q from other variables
```

## Three-column pattern

| What we tried | What happened | What we concluded |
|---|---|---|
| Increased dead-time | Ringing reduced | Dead-time affects ringing [CF] |
| Changed gate resistor | Rise time changed but ringing same | Gate resistor affects speed only [CF] |
