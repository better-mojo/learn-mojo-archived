"""
Parameterization: compile-time parameters, 编译期参数
    - ref: https://docs.modular.com/mojo/manual/basics.html#parameterization

"""


fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg + i)


fn call_repeat():
    repeat[5]("Hello")
    # Prints "Hello" 3 times


fn main():
    call_repeat()
