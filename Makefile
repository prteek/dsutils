.ONESHELL:

.PHONY: all pyrun_dep aws_dep geo_tools_dep rrun_dep

all: pyrun_dep aws_dep geo_tools_dep csvkit

# Install python dependencies specified this way so that they can be installed from any project that calls this Makefile
csvkit:
	pip install csvkit

pyrun_dep:
	pip install numpy scipy pandas matplotlib plotnine statsmodels ray

aws_dep:
	pip install boto3 awswrangler

geo_tools_dep:
	pip install geopandas

rrun_dep:
	rip install -p ggplot2 tidyverse GGally
