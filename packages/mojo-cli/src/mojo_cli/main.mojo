from mymodule import MyPair  # 模块1: 平级, 当前根目录, 不可以有 __init__.mojo
from mymodule2 import MyPair2  # 模块2: 文件夹形式, 必须含有 __init__.mojo


fn main():
    let mine = MyPair(2, 4)
    mine.dump()

    let yours = MyPair2(3, 3)
    yours.dump()
