NAME=cv
TEXFILE=$(NAME).tex
AUXFILE=$(NAME).aux
PDFFILE=$(NAME).pdf

default: $(PDFFILE)

$(PDFFILE): $(TEXFILE) $(AUXFILE) friggeri-cv.cls
	xelatex $(TEXFILE)

# Because we need to build twice
$(AUXFILE): $(TEXFILE) friggeri-cv.cls
	xelatex $(TEXFILE)

clean:
	rm -f *.aux *.log *.out *.bcf *.xml

mrproper: clean
	rm -f $(PDFFILE)

.PHONY: clean mrproper
