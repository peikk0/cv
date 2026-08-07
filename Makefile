THEME = jsonresume-theme-even
SOURCE = resume.json

.PHONY: default all validate render export clean

default: all

all: render export

validate:
	npx resumed validate $(SOURCE)

render: resume.html

export: resume.pdf

resume.html: $(SOURCE)
	npx resumed render $(SOURCE) --theme $(THEME) --output $@

resume.pdf: $(SOURCE)
	npx resumed export $(SOURCE) --theme $(THEME) --output $@

clean:
	rm -f resume.html resume.pdf
