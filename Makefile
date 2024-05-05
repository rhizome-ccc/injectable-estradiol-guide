default: main.pdf booklet.pdf

%-qr.eps: %-url.txt
	cat $< | qrencode -m 0 -t EPS -o $@

%.pdf: %.svg
	inkscape $< --batch-process --export-area-page --export-type=pdf --export-filename=$@

main.pdf: main.tex simulator-qr.eps cliniq-qr.eps needle-exchange-qr.eps drawing-up-video-qr.eps im-injection-video-qr.eps ouroboros.pdf
	pdflatex main
	pdflatex main

booklet.pdf: booklet.tex main.pdf
	pdflatex booklet

.PHONY: default
