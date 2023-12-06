#
# struct: 定义一个结构体
#   - ref: https://docs.modular.com/mojo/manual/basics.html#structs
#
struct MyPair:
    var first: Int  # struct 字段类型, 需要显式声明类型
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        """
        TDOO X: 构造函数
        @inout: 读写引用类型, 类似 rust mut &.
        """
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)


fn use_mypair():
    let mine = MyPair(2, 4)
    mine.dump()


fn main():
    use_mypair()
