[![pipeline status](https://gitlab.com/peikk0/cv/badges/main/pipeline.svg)](https://gitlab.com/peikk0/cv/-/commits/main)

# About

This is my CV, written as a [JSON Resume](https://jsonresume.org) document
(`resume.json`) and rendered to HTML and PDF using
[resumed](https://github.com/rbardini/resumed) with the
[`jsonresume-theme-even`](https://github.com/rbardini/jsonresume-theme-even)
theme.

Published at <https://pierre.guinoiseau.nz/>
(PDF: <https://pierre.guinoiseau.nz/resume.pdf>).

# Build

Install dependencies:

```sh
npm ci
```

Validate the resume against the JSON Resume schema:

```sh
npx resumed validate resume.json
```

Render to HTML:

```sh
npx resumed render resume.json \
  --theme jsonresume-theme-even \
  --output resume.html
```

Export to PDF (uses Puppeteer):

```sh
npx resumed export resume.json \
  --theme jsonresume-theme-even \
  --output resume.pdf
```
