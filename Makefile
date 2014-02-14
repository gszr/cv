proj=cv
aux=functions

all: $(proj).pdf

$(proj).pdf: $(proj).tex $(proj).bib $(aux).tex
	xelatex $(proj)
	bibtex $(proj)
	xelatex $(proj)
	xelatex $(proj)

clean:
	-rm*.pdf
	-rm *.aux
	-rm *.log
	-rm *.out
	-rm *.blg
	-rm *.bbl