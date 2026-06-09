# Lab Record Workflow

## Step 1: Extract metadata

Scan the user's input for: date, project, hardware, firmware, software,
operator, instrument. Use `Unknown` for anything not mentioned.

## Step 2: Reconstruct the setup

From the description, extract: wiring, power supply, probe position,
ground reference, sampling parameters. When the setup description is
incomplete, note the gaps as `Unknown`.

## Step 3: Separate expected from actual

- **Expected:** What the user expected to happen. May be implicit.
- **Actual:** What actually happened. Must be based on evidence.

## Step 4: Classify diagnosis

Apply [CF]/[RH]/[UG] tags per cqn-engineering-claim-rules.
- Confirmed facts: verified by evidence the user can point to
- Reasonable hypotheses: logically consistent but not directly verified
- Unverified guesses: speculation
- Ruled-out causes: explicitly shown not to be the issue

## Step 5: Record decision

Must be one of: Keep (continue with this configuration), Change (modify
something specific), Rollback (revert to previous configuration).
