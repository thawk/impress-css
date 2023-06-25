# Listing all sources
THEMES = $(wildcard src/color-schemes/[^_]*.scss)
TARGETS = $(patsubst %, themes/%, $(notdir $(THEMES:.scss=.css))) classic-slides.css

all: $(TARGETS)

themes/%.css:src/color-schemes/%.scss src/color-schemes/_color_scheme.scss
	npx sass --stop-on-error --no-error-css $< $@

classic-slides.css:src/classic-slides.scss src/_common.scss src/_impressjs.scss src/_revealjs.scss
	npx sass --stop-on-error --no-error-css $< $@

.PHONY: clean
clean:
	rm $(TARGETS)

