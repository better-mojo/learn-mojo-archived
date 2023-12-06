"""
函数定义:
    - ref: https://docs.modular.com/mojo/manual/functions.html
    - def: python mode, 动态类型
    - fn: mojo mode, 静态类型

"""


# python mode, 可以省略参数类型
def greet(name):
    greeting = "Hello, " + name + "!"
    return greeting


# python mode, 类似 Python + type hint
def greet2(name: String) -> String:
    let greeting = "Hello, " + name + "!"
    return greeting

# mojo mode: 不可省略参数类型
fn greet3(name: String) -> String:
    let greeting = "Hello, " + name + "!"
    return greeting


#
# TODO X: main() 也可以加 raises, 偷懒(不想写 try...catch for py def())
#
fn main() raises:
    print(greet("a"))
    print(greet2("b"))
    print(greet3("c"))
