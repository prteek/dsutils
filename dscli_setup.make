.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

.PHONY: all rush

all: rush

# Install rush (R one liner commandline utility) using rip from dsutils
rush:
	rip --github -p "jeroenjanssens/rush"
