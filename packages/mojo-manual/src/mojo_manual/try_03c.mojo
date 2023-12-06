"""
函数重载:
    - ref: https://docs.modular.com/mojo/manual/functions.html#overloaded-functions
    - 支持普通函数重载
    - 支持自定义的 Struct 类型重载
"""


# 函数重载
fn add(x: Int, y: Int) -> Int:
    return x + y


# 同名 + 函数重载, 参数类型不同
fn add(x: String, y: String) -> String:
    return x + y


################################################################################################


# 自定义数据类型 + 函数重载
@value
struct MyString:
    fn __init__(inout self, string: StringLiteral):
        pass


fn foo(name: String):
    print("String")


# 函数重载: 自定义数据类型
fn foo(name: MyString):
    print("MyString")


fn foo(x: Int):
    print(x)


fn call_foo():
    let string = "Hello"
    # foo(string) # This call is ambiguous because two `foo` functions match it
    foo(MyString(string))
    foo(2)


################################################################################################


fn main():
    print(add(1, 2))
    print(add("a", "b"))

    # 自定义数据类型重载
    call_foo()
