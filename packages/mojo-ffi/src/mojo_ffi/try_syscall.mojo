"""

系统调用:
    - ref: https://docs.modular.com/mojo/stdlib/sys/intrinsics.html#external_call
    - 项目: 
        - libc: https://github.com/crisadamo/mojo-libc/blob/main/Libc.mojo#L2

    - fix:
        - brew install llvm

"""


from sys.intrinsics import external_call

# Types aliases
alias c_void = UInt8
alias c_char = UInt8
alias c_schar = Int8
alias c_uchar = UInt8
alias c_short = Int16
alias c_ushort = UInt16
alias c_int = Int32
alias c_uint = UInt32
alias c_long = Int64
alias c_ulong = UInt64
alias c_float = Float32
alias c_double = Float64

# Note: `Int` is known to be machine's width
alias c_size_t = Int
alias c_ssize_t = Int

alias ptrdiff_t = Int64
alias intptr_t = Int64
alias uintptr_t = UInt64


@register_passable("trivial")
struct FILE:
    pass


fn fread(
    ptr: Pointer[c_void], size: c_size_t, nitems: c_size_t, stream: Pointer[FILE]
) -> c_int:
    """Libc POSIX `fread` function
    Reference: https://man7.org/linux/man-pages/man3/fread.3p.html
    Fn signature: size_t fread(void *restrict ptr, size_t size, size_t nitems, FILE *restrict stream)
    Args:
    Returns:.
    """
    return external_call[
        "fread",
        c_size_t,  # FnName, RetType
        Pointer[c_void],
        c_size_t,
        c_size_t,
        Pointer[FILE],  # Args
    ](ptr, size, nitems, stream)


fn fopen(pathname: Pointer[c_char], mode: Pointer[c_char]) -> Pointer[FILE]:
    """Libc POSIX `fopen` function
    Reference: https://man7.org/linux/man-pages/man3/fopen.3p.html
    Fn signature: FILE *fopen(const char *restrict pathname, const char *restrict mode)
    Args:
    Returns:.
    """
    return external_call[
        "fopen",
        Pointer[FILE],  # FnName, RetType
        Pointer[c_char],
        Pointer[c_char],  # Args
    ](pathname, mode)


fn fclose(stream: Pointer[FILE]) -> c_int:
    """Libc POSIX `fclose` function
    Reference: https://man7.org/linux/man-pages/man3/fclose.3p.html
    Fn signature: int fclose(FILE *stream)
    Args:
        stream:
    Returns:.
    """
    return external_call["fclose", c_int, Pointer[FILE]](stream)


fn to_char_ptr(s: String) -> Pointer[c_char]:
    """Only ASCII-based strings."""
    let ptr = Pointer[c_char]().alloc(len(s))
    for i in range(len(s)):
        ptr.store(i, ord(s[i]))
    return ptr


fn __test_file__():
    let fp = fopen(to_char_ptr("try_c.mojo"), to_char_ptr("r"))

    let buf_size = 1024
    let buf = Pointer[UInt8]().alloc(buf_size)
    let status = fread(buf.bitcast[c_void](), buf_size, 1, fp)

    print(String(buf.bitcast[Int8](), buf_size))

    _ = fclose(fp)


def task():
    __test_file__()


fn main() raises:
    _ = task()
