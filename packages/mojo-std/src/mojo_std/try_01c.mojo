from algorithm.sort import sort
from random import rand
from algorithm.sort import sort

"""
排序算法:
    - ref: https://docs.modular.com/mojo/stdlib/algorithm/sort.html

"""


fn sort_test[D: DType](size: Int, max: Int, name: StringLiteral):
    var p = Pointer[SIMD[D, 1]].alloc(size)
    rand[D](p, size)
    sort[D](p, size)
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
    sort_test[DType.int8](300, 3_000, "int8")
    sort_test[DType.float16](3_000, 3_000, "float16")
    sort_test[DType.float32](300_000, 3_000_000_000, "float32")
