# Injectable Estradiol Guide

The booklet is typeset using LaTeX, so the main dependency for
rendering it is a working LaTeX installation.  The booktabs, graphicx
and pdfpages packages are used, though these are included in a standard
TeX Live installation.  There are a couple of other tools used:

- Inkscape for converting SVG to PDF
- `qrencode(1)` for encoding URLs into QR codes
- GNU Make for running commands

Once the tooling is set up, you can render the guide by running
`make`.  This will produce `main.pdf`, which is the page-by-page
guide, and `booklet.pdf` which is the same content but arranged onto
A4 sheets to be printed and folded into a booklet.
