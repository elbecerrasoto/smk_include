##
# Testing include keyword Snakemake
#
# @file
# @version 0.1



# end


.PHONY dry-run:
dry-run: utils.yaml
	snakemake -c 1 -np


.PHONY run:
run: utils.yaml
	snakemake -c 1
	tree


.PHONY style:
style:
	snakefmt .
	yamlfmt *.yaml


.PHONY clean:
clean:
	rm -rf *.txt .snakemake
