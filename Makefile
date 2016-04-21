proj  := cv
aux   := functions
rm    := rm -rf

all: $(proj).pdf

$(proj).pdf: $(proj).tex $(aux).tex
	xelatex $(proj)
	xelatex $(proj)

clean:
	-$(rm) *.aux *.log *.out *.blg *.bbl
