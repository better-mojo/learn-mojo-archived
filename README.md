# learn-mojo

learn mojo

## Mojo 101

- ✅️ Mojo 学习教程 [packages/mojo101](packages/mojo101)
- ✅️ 包含大量示例代码
- ✅️ 新手建议使用 pycharm 打开项目，方便使用 jupyter notebook

> mojo 官方 playground:

- ✅️ 在 playground 中测试， mojo 当前不支持的 python 语法（未来可能支持）

<img width="500"  src="docs/img/img.png"  alt="mojo"/>

## Development Environment

- ✅️ [go-task](https://taskfile.dev/) + [Taskfile.yml](Taskfile.yml) : 脚本工具，替代 Makefile
- ✅️ [python3.10+](https://www.python.org/downloads/)
- ✅️ [poetry](https://python-poetry.org/docs/)
- ✅️ [jupyter notebook](https://jupyter.org/install)

```bash

# 安装 go-task: https://taskfile.dev/installation/
# install: (only for mac)
brew install go-task
# or: (only for windows)
choco install go-task


# 安装 pyenv + python3.10 + 自动配置 venv
task setup

# 安装依赖包：
task mojo:install

```

