smfiles := $(wildcard state_machines/*.smcat)

.PHONY: install all

all:
	@$(MAKE) $(smfiles:state_machines/%.smcat=%.svg)

install:
	npm install

clean:
	rm -rf state_machines/*.svg

%.svg:
	npm run smcat state_machines/$*.smcat &>/dev/null
