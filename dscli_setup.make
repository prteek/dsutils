.ONESHELL:

.PHONY: all csvkit pyrun_dep

all: csvkit pyrun_dep rush

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