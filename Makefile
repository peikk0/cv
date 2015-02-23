NAME=cv
TEXFILE=$(NAME).tex
PDFFILE=$(NAME).pdf

default: $(PDFFILE)

$(PDFFILE): $(TEXFILE) friggeri-cv.cls
	xelatex $(TEXFILE)


clean:
	rm -f *.aux *.log *.out *.bcf *.xml

mrproper: clean
	rm -f $(PDFFILE)

.PHONY: clean mrproper
