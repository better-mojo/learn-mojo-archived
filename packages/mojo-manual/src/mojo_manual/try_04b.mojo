"""
类型标注:
    - ref: https://docs.modular.com/mojo/manual/variables.html#type-annotations
    - 定义 + 初始化
"""


fn mojo_type_annotations():
    # le
    var name: String = "Sam"  # 类型标注, 定义 + 初始化
    name += "!"

    var name1: String = "Bob"
    name1 += "!"

    var name2 = String("Sam")  # 值初始化方式
    name2 += "!"

    print(name, name1, name2)


fn main():
    mojo_type_annotations()
