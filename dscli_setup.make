.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

.PHONY: all rush csvkit pyrun_dep

all: rush csvkit pyrun_dep

# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush" && \
	cp $$(Rscript -e 'cat(.libPaths()[1])' | tr -d '"')/rush/exec/rush /usr/local/bin/rush


# Install csvkit
csvkit:
	pip install csvkit

# Install pyrun dependencies
pyrun_dep:
	pip install numpy scipy pandas matplotlib plotnine statsmodels