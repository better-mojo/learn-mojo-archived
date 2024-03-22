import benchmark
from time import sleep
from time import now

"""
benchmark:
    - ref: https://docs.modular.com/mojo/stdlib/benchmark/benchmark.html

"""


fn sleeper():
    sleep(0.0001)


fn echo():
    print("hello:", now())


# 需要等一段时间, 才能出结果
fn report():
    print("benchmark result:")
    var r = benchmark.run[sleeper](5)
    r.print()
    # print(r.mean())


fn report2():
    print("benchmark result:")
    var r = benchmark.run[echo](5)
    r.print()
    # print(r.mean())


fn main() raises:
    report()
    # report2()
