# Search Policy

## search-enabled mode

- Use available search tools (web, academic search, repository APIs)
- Search for each claim independently
- Verify each candidate: title, author, venue, year must be consistent
- Prefer open-access or institution-accessible sources
- Record search query and results for reproducibility

## When search returns no results

- Try alternative keywords
- Broaden or narrow the search scope
- If still no result: output `[No suitable citation identified]`
  with the search query used

## When search returns partial matches

- A partially relevant citation is better than none, but state the
  limitation: "This paper addresses a related but different topology"
- Do not cite a paper as "supporting" the claim if it only tangentially
  relates
