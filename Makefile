proj	:= cv
aux	:= functions
rm	:= rm -rf

all: $(proj).pdf

$(proj).pdf: $(proj).tex $(proj).bib $(aux).tex
	xelatex $(proj)
	bibtex $(proj)
	xelatex $(proj)
	xelatex $(proj)

clean:
	-$(rm) *.pdf *.aux *.log *.out *.blg *.bbl
