# Report Writing Workflow

## Step 1: Gather inputs

Collect available material: lab records, data analysis reports, figures,
notes, and the user's verbal summary. Note what is missing.

## Step 2: Identify report type and audience

Apply the report_type fragment to understand the required structure,
depth, and emphasis.

## Step 3: Extract key results

From the material, extract:
- What was done (1-2 sentences per experiment)
- What was found (key metrics, waveforms, observations)
- What was not found (missing evidence)

## Step 4: Build evidence table

For each claim, link it to its evidence source and tag it:

| Claim | Evidence source | Tag |
|---|---|---|
| ADC offset is 5 LSB | lab-record-20260609 §Observation | [CF] |
| Vref noise is the dominant contributor | estimated from datasheet | [RH] |

## Step 5: Draft the report

Follow the report section structure defined in the report_type fragment.
Every claim in the narrative must reference or summarise the evidence table.

## Step 6: Review for completeness

Check:
- Are all claimed results tagged?
- Are all missing measurements flagged?
- Are failure cases included?
- Are next steps concrete and prioritised?

## Step 7: Add unknowns and risks

List what is not yet known and what risks remain for the next phase.

## Step 8: Final cross-check

- Is the report defensible? (Can you answer "Why do you think that?")
- Is it readable in 5 minutes? (Group meeting constraint)
- Is anything presented as fact that is actually a guess?
