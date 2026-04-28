# BUW (ROSES) Thesis Template

LaTeX template for Bachelor's and Master's theses at the University of Wuppertal,
research group **Robust, Secure and Privacy-Preserving Smart Systems (ROSES)**.

## Quick start

1. Open this repository in VSCode with the *Dev Containers* extension and re-open in container —
   the devcontainer ships with TeX Live, latexmk, the LTeX grammar/spell checker and an inline PDF viewer.
2. Edit [`settings.tex`](settings.tex) — title, author, examiners, dates, toggles.
3. Write your chapters in [`chapters/`](chapters/) and your bibliography in [`literature/literature.bib`](literature/literature.bib).
4. Save any `.tex` file — the container builds the PDF automatically.

## Repository layout

| Path | Purpose |
|---|---|
| [`thesis.tex`](thesis.tex) | Main entry point. Lists which chapters are included. |
| [`settings.tex`](settings.tex) | All thesis-specific values and layout toggles (edit this). |
| [`template/`](template/) | Title page, header/footer, declarations, lists, bibliography. **Do not edit unless you know what you are doing.** |
| [`chapters/`](chapters/) | One file per chapter, plus `abstract.tex`. |
| [`glossary/glossary.tex`](glossary/glossary.tex) | Acronyms and glossary entries. |
| [`literature/literature.bib`](literature/literature.bib) | BibTeX bibliography. |
| [`forms/declaration.pdf`](forms/declaration.pdf) | Eidesstattliche Versicherung (BUW form). |
| [`images/`](images/) | BUW logos and figures. |
| [`appendix/tools.tex`](appendix/tools.tex) | List of AI-Tools (declaration of AI assistance). |

## Building manually

```sh
latexmk --shell-escape -synctex=1 -pdf thesis.tex
```

`--shell-escape` is required because the template uses [`minted`](https://github.com/gpoore/minted) for code listings.

## Origin

This template was originally based on the [RUB-NDS thesis template](https://github.com/RUB-NDS/thesis_layout) and was migrated to the BUW corporate
design using elements of the [LfI-BUW](https://fk6.uni-wuppertal.de/de/studium/im-studium/abschlussarbeiten/) template. The titlepage design is based on the [ITSC](https://itsc.uni-wuppertal.de/) thesis templates.
