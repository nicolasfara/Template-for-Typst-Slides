# Template for Typst Slides

A lightweight, customizable slide template for Typst.

This repository provides a starter slide deck, theme support, and helper macros so you can quickly author presentation PDFs using Typst. The template was initially developed with the [Touying](https://touying-typ.github.io/) Metropolis theme in mind but is intentionally simple to adapt.

What is included
-----------------
- `Template-for-Typst-Slides.typ` — the main slide source you can edit (replace content with your slides).
- `utils.typ` — helper macros used across slides (title, sections, footers, etc.).
- `themes/` — theme files (colors, fonts, spacing). Edit or add themes here.
- `images/` — sample images and icons used by the template.
- `bibliography.bib` — bibliography file if you use citations.

Quickstart
----------
Prerequisite: install Typst (https://typst.org/). A recent Typst release is recommended.

From the repository root run:

```bash
# Compile the default slide file to PDF
typst compile Template-for-Typst-Slides.typ slides.pdf

# If your Typst supports live watching, use:
typst watch Template-for-Typst-Slides.typ slides.pdf
```

Open `slides.pdf` to view the generated slides.

If the repository contains a `slides-template.typ` file (older versions of this template), you can rename or copy it to start your deck. The primary file in this repo is `Template-for-Typst-Slides.typ`.

Customizing the template
------------------------
- Change theme tokens in `themes/theme.typ` (colors, fonts, spacing).
- Edit `utils.typ` to modify or add macros that apply across slides.
- Place images under `images/` and reference them with relative paths.
- Update `bibliography.bib` and add citation calls in your `.typ` files if you need references.

Tips and troubleshooting
------------------------
- Typst error messages usually include file names and line numbers; follow them to debug layout errors.
- If you see fallback fonts or missing glyphs, install the fonts referenced in the theme or change the theme to use system fonts.

Contributing
------------
Contributions are welcome:

1. Fork the repository.
2. Add themes, improve macros in `utils.typ`, or add examples in `images/`.
3. Open a pull request describing your changes.

License
-------
See the `LICENSE` file in the repository for license terms.

Support
-------
If you have questions or find issues, open an issue in this repository. For Typst syntax and advanced layout help, consult the official docs at https://typst.org/.

Enjoy creating slides!
