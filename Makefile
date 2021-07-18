PDFs = $(addsuffix .pdf, $(basename $(wildcard *.tex)))
all: $(PDFs)

%.pdf: %.tex
	@pdflatex $<

clean:
	@rm -f *.pdf *.log *.aux
