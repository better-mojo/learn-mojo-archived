@value
struct MyPair:
    var first: Int
    var second: Int


fn main():
    print("Hello, world!")
    let p = MyPair(1, 2)
    print(p.first, p.second)
