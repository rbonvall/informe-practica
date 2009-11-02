DOC = $(shell ls *.tex | sed -e 's/[.]tex$$//')

pdf: $(DOC).pdf
dvi: $(DOC).dvi

%.dvi: %.tex
	latex $<
%.pdf: %.tex
	pdflatex $<

clean:
	rm *.{log,aux,dvi,pdf}

.PHONY: clean dvi pdf
