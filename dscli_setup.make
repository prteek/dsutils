.ONESHELL:

.PHONY: all pydep rush

all: pyrun_dep a2csv_dep shp2csv_dep csvkit

# Install python dependencies specified this way so that they can be installed from any project that calls this Makefile
csvkit:
	pip install csvkit

pyrun_dep:
	pip install numpy scipy pandas matplotlib plotnine statsmodels

a2csv_dep:
	pip install boto3 awswrangler

shp2csv_dep:
	pip install geopandas


# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush" && \
	cp $$(Rscript -e 'cat(.libPaths()[1])' | tr -d '"')/rush/exec/rush /usr/local/bin/rush
