# Engineering Review Workflow

## Step 1: Understand the design

Read the user's description. Identify:
- What is being reviewed (ADC chain / FPGA / firmware / PCB / AI model)
- Design parameters provided
- Missing information (mark as Missing Evidence)

## Step 2: Run domain-specific checks

Load the review_type reference and run through its checklist.
For each check, determine severity.

## Step 3: Compile issues

Group issues by severity:
| Severity | Count |
|---|---|
| Critical | |
| Major | |
| Minor | |
| Missing Evidence | |

## Step 4: Risk register

For each Critical/Major issue, assess:
- Likelihood (high / medium / low)
- Impact (catastrophic / significant / minor)
- Mitigation suggestion

## Step 5: Recommended next actions

Ordered by priority. Each action should be concrete:
- "Add an RC anti-aliasing filter before the ADC input"
- "Use a dedicated low-noise voltage reference instead of the board LDO"

## Step 6: Questions to resolve

List any open questions that need the designer's input.
