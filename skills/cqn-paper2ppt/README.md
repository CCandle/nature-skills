# cqn-paper2ppt

Build structured presentation decks for engineering research: paper
group meetings, experiment progress, stage reviews, and defenses.

## Usage

Provide the material and deck type:

> Turn this ADC ENOB experiment record into an experiment-progress PPT.

Output: slide outline with speaker notes, evidence references, and
optional python-pptx export code.

## Deck types

| Type | Use case |
|---|---|
| paper-group-meeting | Journal club, paper reading |
| experiment-progress | Weekly lab update |
| stage-review | Milestone or phase review |
| defense | Thesis or project defense |

## Key rules

- One slide, one question
- Speaker notes mandatory
- Data slides declare fs, unit, calibration
- Paper PPTs include Missing Reproducibility slide
