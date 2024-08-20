.ONESHELL:

.PHONY: all pydep rush

all: pydep

# Install python dependencies
pydep:
	pip install -r base-requirements.txt

# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush" && \
	cp $$(Rscript -e 'cat(.libPaths()[1])' | tr -d '"')/rush/exec/rush /usr/local/bin/rush
