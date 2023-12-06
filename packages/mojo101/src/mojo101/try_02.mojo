"""
函数定义:
    - fn: 定义 mojo 风格的函数
    - def: 定义 Python 风格的函数
    - ref: https://docs.modular.com/mojo/manual/basics.html
"""


def greet(name):
    return "Hello, " + name + "!"


#
# todo x: mojo 模式, 静态语言, 需要指明参数类型,
#   - 注意和 Python 模式的区别.(Python 的参数类型, 不强制指明)
#
fn greet2(name: String) -> String:
    return "Hello, " + name + "!"


#########################################################################


#
# main 入口, 在 def 中, 可以调用 fn() 定义的函数.
#
def main():
    ret = greet("mojo")
    print(ret)

    ret2 = greet2("mojo")
    print(ret2)


#
# main, 是函数入口, 可以用 def 和 fn 定义, 都可.
#
fn main2():
    pass
