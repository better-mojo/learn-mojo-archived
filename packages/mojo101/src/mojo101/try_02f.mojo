"""
语句块:
    - ref: https://docs.modular.com/mojo/manual/basics.html#blocks-and-statements

"""


def loop():
    for x in range(5):
        if x % 2 == 0:
            print(x)

def print_line():
    # 跨行字符串
    long_text = "This is a long line of text that is a lot easier to read if"
                " it is broken up across two lines instead of one long line."
    print(long_text)



def main():
    loop()
    print_line()
