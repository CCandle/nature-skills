# Research Usefulness Assessment

## Questions to answer

1. Does this paper address a problem I am working on?
2. Can I use their method directly? (Same hardware, same domain)
3. Can I adapt their method? (Different hardware, similar concept)
4. Does the paper provide enough detail to reproduce their work?
5. What specific technique or insight can I borrow?
6. What would I need to implement myself?

## Output format

```
## What is useful for my research
- [Specific technique X] can be applied to my ADC characterisation
- The experimental methodology in Section III is a good template
- The noise analysis approach is directly usable

## What is questionable / underspecified
- The paper claims 12-bit ENOB but does not specify the measurement
  bandwidth [Missing]
- The dataset used for training is not publicly available [Missing]
- The comparison to baseline X uses different test conditions [Underspecified]
```
