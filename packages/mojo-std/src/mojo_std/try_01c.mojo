from algorithm.sort import sort
from random import rand


"""
排序算法:
    - ref: https://docs.modular.com/mojo/stdlib/algorithm/sort.html
    - example: https://github.com/modularml/mojo/issues/1018

"""


fn sort_test[D: DType](size: Int, max: Int, name: StringLiteral):
    var p = Pointer[SIMD[D, 1]].alloc(size)

    #
    # 随机:
    #
    rand[D](p, size)

    # 打印乱序值:
    print("random:", name, "size:", size, "max:", max)
    for i in range(size):
        print_no_newline(p[i], ",")
        if i > 0 and i % 10 == 0:
            print()
    print("\n")

    #
    # 排序:
    #
    sort[D](p, size)

    #
    # 打印排序值:
    #
    print("\nsorted:", name, "size:", size, "max:", max)
    for i in range(size):
        print_no_newline(p[i], ", ")
        if i > 0 and i % 10 == 0:
            print()
    print()

    for i in range(1, size - 1):
        if p[i] < p[i - 1]:
            print(name, "size:", size, "max:", max, "incorrect sort")
            print_no_newline("p[")
            print_no_newline(i - 1)
            print("] =", p.load(i - 1))
            print_no_newline("p[")
            print_no_newline(i)
            print("] =", p.load(i))
            print()
            return


fn main():
    print("start sort test")
    sort_test[DType.int8](300, 3_000, "int8")
    # sort_test[DType.float16](3_000, 3_000, "float16")
    # sort_test[DType.float32](300_000, 3_000_000_000, "float32")
