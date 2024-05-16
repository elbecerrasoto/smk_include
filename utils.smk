# Utils
configfile: "utils.yaml"


MSG = config["msg"]

FILE_QM = __file__
print(f"my msg is {MSG}")
print(f"whever is __file__ {__file__}")


rule two:
    input:
        f"one.txt",
    output:
        f"two.txt",
    shell:
        """
        touch {output}
        """
