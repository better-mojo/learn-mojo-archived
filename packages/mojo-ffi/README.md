# Mojo + C/C++ FFI

- Mojo 和 C/C++ 互操作性
- https://docs.modular.com/mojo/roadmap.html#cc-interop

## FAQ:

- 遇到的一些编译报错问题.

### fix llvm:

- 部分代码, 需要设置 LLVM
- [mojo setup](https://gist.github.com/trevorhobenshield/6bca58f947ad6115a113a97072df1a73)
- 安装 llvm:

```ruby

brew install llvm

```

- 设置 llvm 环境变量:

```ruby

set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"

# /opt/homebrew/opt/llvm/bin
set -gx PATH "$PATH:/opt/homebrew/opt/llvm/bin"
set -gx LLVM_SYMBOLIZER_PATH "/opt/homebrew/opt/llvm/bin/llvm-symbolizer"

```
