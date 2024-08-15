.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

.PHONY: all rush csvkit

all: rush csvkit

# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush" && \
	cp $$(Rscript -e 'cat(.libPaths()[1])' | tr -d '"')/rush/exec/rush /usr/local/bin/rush


# Install csvkit
csvkit:
	pip install -U csvkit