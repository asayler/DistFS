PRESENTATION_INCLUDES = 
PAPER_INCLUDES        = 
INCLUDE_DIR = inc

BIBTEX     ?= bibtex -terse
LATEX      ?= pdflatex -file-line-error
LATEXFIRST ?= -interaction=batchmode
LATEXLAST  ?= -halt-on-error
INKSCAPE   ?= inkscape
CONVERT    ?= convert

export TEXINPUTS := .:./$(INCLUDE_DIR)/:$(TEXINPUTS)

PRESENTATION_INCLUDES := $(PRESENTATION_INCLUDES:%.svg=%.png)
PAPER_INCLUDES        := $(PAPER_INCLUDES:%.svg=%-g.png)

VPATH = inc

vpath %.png $(INCLUDE_DIR)
vpath %.svg $(INCLUDE_DIR)
vpath %.c   $(INCLUDE_DIR)

.PHONY: all clean allclean

all: proposal.pdf clean

clean:
	$(RM) *.aux *.bbl *.blg *.dvi *.log *.out *.nav *.snm *.toc *.vrb *~
	$(RM) $(INCLUDE_DIR)/*.png

allclean: clean
	$(RM) proposal.pdf

.PHONY: proposal

proposal: proposal.pdf clean

proposal.pdf: proposal.aux proposal.bbl
	$(LATEX) $(LATEXFIRST) proposal.tex
	$(LATEX) $(LATEXLAST) proposal.tex
	@touch $^ $@

proposal.bbl: proposal.aux refs.bib
	$(BIBTEX) proposal.aux

proposal.aux: proposal.tex $(PAPER_INCLUDES)
	$(LATEX) $(LATEXFIRST) proposal.tex