from python import Python

"""

导入 Python:
    - 导入 Python 标准库
    - 导入 Python 第三方库(如缺失,自动安装)
    - 导入 Python 本地实现的库
    - ref: https://docs.modular.com/mojo/manual/basics.html#python-integration

"""


def check_py(pkgs: Tuple):
    #
    # todo x: 特别注意 mojo run 的位置, 决定真正的相对路径!!!
    #
    # Python.add_to_path(".")  # todo x: 注意执行的相对路径!!!
    Python.add_to_path("./src/mojo_manual")  # todo x: 注意执行的相对路径!!!
    check = Python.import_module("check_mod")

    check.installs_if_missing(pkgs)


fn use_numpy() raises:
    _ = check_py(("numpy",))

    var np = Python.import_module("numpy")

    var ar = np.arange(15).reshape(3, 5)
    print(ar)
    print("shape:", ar.shape)


fn main():
    try:
        use_numpy()
    except e:
        print("numpy is not installed", e)
