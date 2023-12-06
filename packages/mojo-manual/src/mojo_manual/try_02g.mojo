"""
    源码注释风格:
        - 单行注释
        - 多行注释
        - ref: https://docs.modular.com/mojo/manual/basics.html#code-comments
"""


def comments():
    # This is a comment. The Mojo compiler ignores this line.

    let message = "Hello, World!"  # This is also a valid comment

    """
    This is also a comment, but it's easier to write across
    many lines, because each line doesn't need the # symbol.
    """


fn pprint(x: String):
    """Prints a string.

    Args:
        x: The string to print.
    """
    ...
    pass


fn main():
    pprint("Hello, World!")
