# 规格驱动 AI 开发文档模板（中文）

[English](./README.en.md) | 中文

本模板聚焦于以“规范驱动开发”为核心，让 AI 基于高质量规格生成可用于生产的代码与测试。

## 项目目的
- 提供可复用的双语规格与测试模板，帮助团队将需求转化为可执行规格，借助 AI 生成实现与测试，并在明确的验收与非功能质量门下安全迭代。

## 目录
- 模板库：[docs/templates/zh](./docs/templates/zh)（入门/中级/高级/测试）
- CARE 框架：[docs/care-framework.zh.md](./docs/care-framework.zh.md)
- 使用指南：[docs/USAGE.zh.md](./docs/USAGE.zh.md)
- 安装文档：[docs/INSTALL.zh.md](./docs/INSTALL.zh.md)
- 参考来源：[docs/sources.zh.md](./docs/sources.zh.md)

## 快速开始
- 选择任务复杂度对应的模板（入门/中级/高级）
- 按模板填写六要素：上下文、功能需求、边界与约束、少样本示例、验收标准、非功能需求
- 将规格交给 AI 工具生成代码与测试；发现偏差先回写规格再迭代实现
- 初始化到其他项目：运行 `scripts/init-docs.sh <目标目录> zh [--force]`

## 安装与集成

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

方式三：作为 Skill 导入（高级）
如果你使用的 AI 编辑器支持“Skills”功能，可以将本项目的核心能力一键导入。详见 [docs/skills/aics-skill.zh.md](./docs/skills/aics-skill.zh.md)。

更多安装方式详见 [安装文档](./docs/INSTALL.zh.md)。

## 安装与使用（无需跳转）
- 克隆完成后，直接按以下步骤与 AI 对话：
  - **赋予上下文**：在对话开始时，使用 `#aics-docs`（或通过工具提及文件夹）让 AI 了解规格模板库。
  - **复制系统消息**：
    - “请严格遵循 `aics-docs/` 中的规格模板、CARE 六要素与**本项目现有技术栈及目录约定**；输出必须可执行（包含文件路径与完整内容）；验收与非功能质量门必须可测试；解释不超过 5 句。”
  - **执行流程**：**Step 0 生成项目认知文档** -> 需求生成规格 -> 代码实现 -> 配套测试 -> 调试闭环。

## 实战案例：一键生成（手机号注册接口）

**在 AI 对话框直接输入：**
> “任务：实现一个手机号填写与验证接口。
> 0. **首先扫描项目根目录，将识别到的技术栈、目录结构与代码风格整理为 Markdown，保存到 `aics-docs/project-context.md`。**
> 1. 参考 `aics-docs/` 中的 `rest-endpoint-spec` 模板生成规格文档（含手机号正则校验、5条以上验收标准）。
> 2. 根据规格并**深度分析 `project-context.md` 与现有代码**，提供完整实现代码（包含文件路径）。
> 3. 编写配套测试用例，覆盖正向、位数错误、非法字符等场景。
> 要求：严格遵守错误码定义，输出必须可执行，解释不超过 5 句。”

## 模板选择
- 函数：function-spec（自然语言）
- 后端接口：rest-endpoint-spec（可混合 OpenAPI/Schema）
- 前端组件：react-component-spec（可访问性与状态）
- 数据层变更：db-migration-spec（UP/DOWN 与回滚）
- 独立服务：microservice-spec（边界、依赖、可观察性）
- 跨系统设计：system-architecture-spec（ADR 与运行特性）
- 渐进改进：code-refactoring-spec（行为保持与测试通过）
- 平台/框架迁移：code-migration-spec（分阶段发布与回滚）
- 测试：test-plan、test-case、bug-pattern-checklist、debugging-workflow

## 关键约定
- 规格即源：以模板编写的规格为唯一真相
- 明确验收：每项功能需定义可测试的 Done 标准
- 非功能显式：安全、性能、可靠性、可维护性必须明确

## 参考来源
- 详见 [docs/sources.zh.md](./docs/sources.zh.md) | [English Sources](./docs/sources.en.md)
