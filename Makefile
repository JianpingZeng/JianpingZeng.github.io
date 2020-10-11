PAPER = Jianping_CV
TEX = $(PAPER).tex

.PHONY: all clean

$(PAPER).pdf: $(TEX)
	pdflatex -file-line-error $(PAPER)
ifeq ($(LOGNAME),jpzeng)
	open $(PAPER).pdf
endif
ifeq ($(LOGNAME),nicola)
	open $(PAPER).pdf
endif
clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
