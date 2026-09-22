# Makefile for academic report

DOC = main

all: $(DOC).pdf

$(DOC).pdf: $(DOC).tex
	pdflatex $(DOC).tex
	# Run a second time to ensure cross-references and tables of contents are updated
	pdflatex $(DOC).tex 

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk