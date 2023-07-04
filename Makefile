# Listing all sources
THEMES = $(wildcard src/color-schemes/[^_]*.scss)
LAYOUTS = $(wildcard src/layouts/[^_]*.scss)
TARGETS = \
	$(patsubst %, themes/%, $(notdir $(THEMES:.scss=.css))) \
	$(patsubst %, layouts/%, $(notdir $(LAYOUTS:.scss=.css))) \
	classic-slides.css

all: $(TARGETS)

themes/%.css:src/color-schemes/%.scss src/color-schemes/_color_scheme.scss
	npx sass --no-error-css $< $@

layouts/%.css:src/layouts/%.scss src/layouts/_layout.scss
	npx sass --no-error-css $< $@

classic-slides.css:src/classic-slides.scss $(wildcard src/_*.scss) src/layouts/_layout.scss
	npx sass --no-error-css $< $@

.PHONY: clean
clean:
	rm $(TARGETS)

