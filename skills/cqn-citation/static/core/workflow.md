# Citation Workflow

## Step 1: Detect search capability

Determine whether the agent has search tools available.

- If yes → `search-enabled mode`
- If no → `no-search mode`

## Step 2: Segment claims

Divide the manuscript text into citable segments. Each segment should
contain one claim that needs a citation.

## Step 3: Determine source tier per claim

| Claim type | Preferred source tier |
|---|---|
| Engineering method | IEEE/Elsevier/IET journal |
| Experimental technique | Application note or standard |
| Component parameter | Datasheet |
| Theoretical foundation | Textbook or seminal paper |
| Broad context | Review paper, high-impact journal if relevant |

## Step 4A (search-enabled): Search and verify

For each claim, search for supporting literature. Verify each candidate.
Output the citation map with real references.

## Step 4B (no-search): Output requirements

For each claim, output the citation requirements without fabricated
references. Use the no-search output format.

## Step 5: Report

Deliver the citation map or citation requirements with clear mode
indication.
