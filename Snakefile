############### Snakefile ###############
# Which happens first?
# include or config
configfile: "config.yaml"


MAIN = config["main"]
SINCLUD = config["sinclud"]
FINCLUD = config["finclud"]


print(f"my smk file is {SINCLUD}")


include: INCLUDED


rule all:
    input:
        f"{FINCLUD}",


rule one:
    output:
        f"{MAIN}",
    shell:
        """
        touch {output}
        """


# rule two from include
