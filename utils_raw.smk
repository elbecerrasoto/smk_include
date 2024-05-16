# Utils
configfile: "utils.yaml"


MSG = config["msg"]
FINCLUD = config["finclud"]

print(f"my msg is {MSG}")
print(f"__file__ is {__file__}")


rule two:
    input:
        f"one.txt",
    output:
        f"{FINCLUD}",
    shell:
        """
        touch {output}
        """
