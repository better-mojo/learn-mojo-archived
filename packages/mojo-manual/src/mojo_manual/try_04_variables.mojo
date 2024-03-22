"""
变量:
    - ref: https://docs.modular.com/mojo/manual/variables.html
    - python 模式: 定义变量, 可以省略类型(动态语言特性)
    - mojo 模式: 定义变量, 不可以省略类型(静态语言特性)
        - var: Mutable, 可变参数
        - let: Immutable, 不可变参数, 定义后不允许修改
"""


def py_mode():
    name = "Sam"
    print("py mode vars:\n")
    print(name)


fn mojo_mode():
    print("mojo mode vars:\n")

    var name = "Sam"  # Mutable
    var user_id = 42  # Immutable

    print(name)
    name = "Bob"
    print(name)
    print(user_id)


fn mojo_type_annotations():
    var name: String = "Sam"
    name += "!"

    var name1: String = "Bob"
    name1 += "!"

    var name2 = String("Sam")
    name2 += "!"

    print(name, name1, name2)


fn main() raises:
    _ = py_mode()

    mojo_mode()

    # 类型标注
    mojo_type_annotations()
