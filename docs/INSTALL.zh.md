# 安装文档

仓库地址
- https://github.com/Degree-21/AICS

方式一：作为独立目录克隆（推荐）
在你的项目根目录下执行：

```bash
git clone https://github.com/Degree-21/AICS.git aics-docs
# 此时 aics-docs/ 目录已准备好，可直接使用
```

方式二：作为 Git 子模块（Submodule）
如果你的项目也是一个 Git 仓库，且希望保持文档库的更新同步：

```bash
git submodule add https://github.com/Degree-21/AICS.git aics-docs
# 此时 aics-docs/ 目录已作为子模块加入
```

后续步骤
- 阅读 `aics-docs/README.zh.md` 开始使用
- 按照 Step 0 生成 `aics-docs/project-context.md`

高级用法（手动提取）
如果你希望将文档库的内容“提取”到项目其他位置（脱离 Git 关联）：

```bash
# 克隆到临时目录
git clone https://github.com/Degree-21/AICS.git temp-aics
chmod +x temp-aics/scripts/init-docs.sh

# 将文档复制到你的 docs/ 目录（不包含 .git 信息）
temp-aics/scripts/init-docs.sh ./docs zh

# 清理临时目录
rm -rf temp-aics
```

卸载/清理
- 方式一：`rm -rf aics-docs`
- 方式二：`git submodule deinit -f aics-docs && git rm -f aics-docs`
