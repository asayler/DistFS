PAPER_INCLUDES = TahoeTestbed.pdf
INCLUDE_DIR    = include

BIBTEX     ?= bibtex -terse
LATEX      ?= pdflatex -file-line-error
LATEXFIRST ?= -interaction=batchmode
LATEXLAST  ?= -halt-on-error
INKSCAPE   ?= inkscape
CONVERT    ?= convert

VPATH = $(INCLUDE_DIR)

.PHONY: all clean cleanall

all: proposal.pdf report.pdf clean

clean:
	$(RM) *.aux *.bbl *.blg *.dvi *.log *.out *.nav *.snm *.toc *.vrb *~
	$(RM) $(INCLUDE_DIR)/*.pdf

cleanall: clean
	$(RM) proposal.pdf report.pdf

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

.PHONY: report

report: report.pdf clean

report.pdf: report.aux report.bbl
	$(LATEX) $(LATEXFIRST) report.tex
	$(LATEX) $(LATEXLAST) report.tex
	@touch $^ $@

report.bbl: report.aux refs.bib
	$(BIBTEX) report.aux

report.aux: report.tex $(PAPER_INCLUDES)
	$(LATEX) $(LATEXFIRST) report.tex

%.pdf:%.svg
	$(INKSCAPE) $< -D --export-pdf=$(INCLUDE_DIR)/$@
