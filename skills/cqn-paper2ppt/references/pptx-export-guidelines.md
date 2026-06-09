# PPTX Export Guidelines

python-pptx is an optional tool. It is not pre-installed and not
required for the skill to function. Default output is a slide outline
in markdown.

## If the user requests .pptx

Install python-pptx:
```bash
pip install python-pptx
```

## Minimal example

```python
from pptx import Presentation
from pptx.util import Inches, Pt

prs = Presentation()
slide = prs.slides.add_slide(prs.slide_layouts[5])  # blank

# Title
title = slide.shapes.title
title.text = "Slide Title"

# Add text box
txBox = slide.shapes.add_textbox(Inches(0.5), Inches(1), Inches(8), Inches(5))
tf = txBox.text_frame
tf.text = "Bullet point content"

prs.save("presentation.pptx")
```

## Best practices

- Use blank layout (index 5 or 6 depending on template)
- Set font to Arial or Calibri, size ≥ 24 pt for body
- Keep text concise — bullet points only
- Add figures with `slide.shapes.add_picture()`
