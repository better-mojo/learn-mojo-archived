import shutil
import subprocess
from importlib.util import find_spec


"""
TODO X: 
    - https://github.com/modularml/mojo/blob/main/examples/check_mod.py#L13
    - 检查 + 安装 Python 依赖
"""


FIX = """
-------------------------------------------------------------------------
fix following the steps here:
    https://github.com/modularml/mojo/issues/1085#issuecomment-1771403719
-------------------------------------------------------------------------
"""


def installs_if_missing(names: list[str]):
    for name in names:
        install_if_missing(name)


def install_if_missing(name: str):
    if find_spec(name):
        print(f"{name} found, skipping...")
        return

    print(f"{name} not found, installing...")
    try:
        if shutil.which("python3"):
            python = "python3"
        elif shutil.which("python"):
            python = "python"
        else:
            raise ImportError("python not on path" + FIX)
        subprocess.check_call([python, "-m", "pip", "install", name])
        return
    except:
        raise ImportError(f"{name} not found" + FIX)


# python main
if __name__ == "__main__":
    installs_if_missing(["numpy"])
