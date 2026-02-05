# 安装文档

仓库地址
- https://github.com/Degree-21/AICS

环境要求
- macOS/Linux 终端可执行 shell
- 可执行脚本：scripts/init-docs.sh

方式一：直接克隆并初始化到项目根目录

```bash
git clone https://github.com/Degree-21/AICS.git aics-docs
cd aics-docs && chmod +x scripts/init-docs.sh
# 英文默认
scripts/init-docs.sh ../your-project en
# 中文默认
scripts/init-docs.sh ../your-project zh
# 覆盖已有同名文件
scripts/init-docs.sh ../your-project en --force
```

方式二：克隆并安装到项目 docs 目录

```bash
cd your-project
git clone https://github.com/Degree-21/AICS.git vendor/aics-docs
chmod +x vendor/aics-docs/scripts/init-docs.sh
# 安装到 docs（英文/中文默认二选一）
vendor/aics-docs/scripts/init-docs.sh ./docs en
vendor/aics-docs/scripts/init-docs.sh ./docs zh
```

方式三：作为子模块引入

```bash
cd your-project
git submodule add https://github.com/Degree-21/AICS.git vendor/aics-docs
chmod +x vendor/aics-docs/scripts/init-docs.sh
vendor/aics-docs/scripts/init-docs.sh . en
```

卸载/清理
- 删除复制到项目的 docs/ 子目录与 README.* 文件
- 若使用子模块：`git submodule deinit -f vendor/aics-docs && git rm -f vendor/aics-docs`

后续
- 使用指南：docs/USAGE.zh.md
- 语言切换：README.zh.md 与 README.en.md 顶部互相跳转

