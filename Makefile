NAME=cv
TEXFILE=$(NAME).tex
AUXFILE=$(NAME).tex
PDFFILE=$(NAME).pdf

default: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(AUXFILE) friggeri-cv.cls
	xelatex $(TEXFILE)

$(AUXFILE): $(TEXFILE) friggeri-cv.cls
	xelatex $(TEXFILE)

clean:
	rm -f *.aux *.log *.out *.bcf *.xml

mrproper: clean
	rm -f $(PDFFILE)

.PHONY: clean mrproper
