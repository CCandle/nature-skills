# Text Source (Pasted Text)

Applicable when the user provides paper content as pasted text, excerpts,
abstract, method snippets, chat notes, or partial document content.

## Behaviour

- Treat the input as a partial source.
- Extract only from the provided text. Do not infer missing sections.
- Output must include an explicit `Input scope` note stating what parts
  of the paper were provided.
- Any section not covered by the provided text must be marked:
  `Not provided` / `Not accessible from the given input`.

## Restrictions

- Do not claim to have read the full paper.
- Do not infer DOIs, page numbers, figure numbers, or citation details
  from partial text.
- The Citation / Source Map section must only reference the provided
  text range. Do not fabricate publication metadata.
- If the user needs a full-paper reading, recommend providing the PDF,
  DOI, or URL instead.

## Output adaptation

- `Reproducibility Checklist`: only items that can be assessed from the
  provided text. Everything else: `Not assessable — full text required`.
- `Missing Reproducibility Information`: all sections not present in
  the input must be listed as `Not provided`.
