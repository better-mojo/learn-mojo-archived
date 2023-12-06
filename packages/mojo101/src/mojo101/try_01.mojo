"""
示例: 
    - ref: https://docs.modular.com/mojo/manual/get-started/hello-world.html

"""


# python function definition
def pytask():
    print("hello mojo, py mode")


# mojo function definition
fn task():
    print("hello mojo, mojo mode")


# todo x: 主函数入口, 类似 python 的  if __name__ == "__main__":
fn main():
    # call py function
    try:
        _ = pytask()  # todo x: 调用 py 方法, 需要放在 try...catch 中,
    except e:
        print("pytask() not found", e)

    # call mojo function
    task()
