"""
函数参数: 带默认值的参数, 可以缺省
    - ref: https://docs.modular.com/mojo/manual/functions.html#optional-arguments
    - 传参方式:
        - 按位置顺序传参, 支持缺省默认值
        - 按 k-v 枚举方式传参, 顺序可乱
"""


# 参数带默认值, 允许缺省传参
fn pow(base: Int, exp: Int = 2) -> Int:
    return base**exp


# 按位置顺序传参, 顺序不可乱
fn use_defaults():
    var z = pow(3)  # 使用默认值
    print(z)


# k-v 方式传参
fn use_keywords():
    var z = pow(exp=3, base=2)  # k-v 枚举传参, 顺序可乱
    print(z)


fn main():
    print(pow(2))  # 2^2, 缺省
    print(pow(2, 4))  # 2^4

    use_defaults()
    use_keywords()
