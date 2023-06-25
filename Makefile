# Listing all sources
THEMES = $(wildcard src/color-schemes/[^_]*.scss)
TARGETS = $(patsubst %, themes/%, $(notdir $(THEMES:.scss=.css))) classic-slides.css

all: $(TARGETS)

themes/%.css:src/color-schemes/%.scss src/_color_define.scss
	npx sass --no-error-css $< $@

classic-slides.css:src/classic-slides.scss src/_common.scss src/_impressjs.scss src/_revealjs.scss
	npx sass --no-error-css $< $@

.PHONY: clean
clean:
	rm $(TARGETS)

