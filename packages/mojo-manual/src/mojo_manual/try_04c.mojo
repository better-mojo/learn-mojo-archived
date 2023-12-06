"""
延迟初始化:
    - ref: https://docs.modular.com/mojo/manual/variables.html#late-initialization
    - 定义 + 未初始化, 延迟初始化
"""


fn my_function(x: Int):
    let z: Float32  # 定义 + 未初始化

    if x != 0:
        z = 1.0
    else:
        z = foo()  # 延迟初始化
    print(z)


fn foo() -> Float32:
    return 3.14


fn main():
    my_function(0)  # 延迟初始化
    my_function(1)
