# Experiment Planner Workflow

Follow these 8 steps for every experiment plan.

## Step 1: Understand the goal

Clarify the experiment objective. What question is being asked?
What decision will the experiment inform?

## Step 2: Identify knowns and unknowns

List everything the user has told you about the system. Separate:
- Known parameters (explicitly stated or from datasheets)
- Unknown parameters (mark as `Unknown`)
- Assumptions (mark as `[RH]`)

## Step 3: Formulate hypothesis

Write a single-sentence core hypothesis: "If X is changed, then Y
will happen because Z."

## Step 4: Define variables

| Variable type | Description |
|---|---|
| Independent | What you will change |
| Dependent | What you will measure |
| Controlled | What stays constant |

## Step 5: Design the setup

Describe:
- Hardware configuration
- Instrument settings
- Wiring / probe placement
- Ground reference
- Sampling parameters
- Safety considerations

## Step 6: Define pass/fail criteria

If the user provided specifications, use them.
If not, propose a Suggested threshold marked `[RH]`.

## Step 7: Specify data to save

List exactly what files, screenshots, and logs must be saved
for the experiment to be reproducible.

## Step 8: Design the minimal next test

What is the single most informative next experiment?
This should be the experiment that reduces the most uncertainty.
