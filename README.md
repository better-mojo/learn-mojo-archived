# learn-mojo

learn mojo

## Mojo 101

- ✅️ Mojo 学习教程 [packages/mojo101](packages/mojo101)
- ✅️ 包含大量示例代码
- ✅️ 新手建议使用 pycharm 打开项目，方便使用 jupyter notebook

## Development Environment

- ✅️ [go-task](https://taskfile.dev/) + [Taskfile.yml](Taskfile.yml) : 脚本工具，替代 Makefile
- ✅️ python3.10
- ✅️ poetry
- ✅️ jupyter notebook

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

