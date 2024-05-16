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


utils.yaml: utils_raw.yaml config.yaml
	grep main config.yaml | cat utils_raw.yaml - > $@
	make style


.PHONY style:
style:
	snakefmt .
	yamlfmt *.yaml


.PHONY clean:
clean:
	rm -rf *.txt .snakemake utils.yaml
