from pathlib import Path, cwd

"""
path: 路径管理
    - ref: https://docs.modular.com/mojo/stdlib/pathlib/path.html
    - api:
        - 获取当前路径
        - 判断路径是否存在
"""


def task():
    c = cwd()
    print("current path:", c)

    # 构造一个路径
    p = Path("abc")

    # 判断路径是否存在
    if p.exists():
        print("path exists:", p)
    else:
        print("path not exists:", p)


fn main() raises:
    _ = task()
