.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

.PHONY: all rush csvkit

all: rush csvkit

# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush"

# Install csvkit
csvkit:
	pip install -U csvkit