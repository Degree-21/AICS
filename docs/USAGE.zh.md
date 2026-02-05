# 使用指南

目的
- 帮助团队初始化文档、编写规格、生成代码与测试并迭代

前置
- 克隆或引入本仓库；确保能运行 scripts/init-docs.sh

初始化
- 将 docs 与 README 拷贝到目标项目
- 英文默认：scripts/init-docs.sh <目标目录> en [--force]
- 中文默认：scripts/init-docs.sh <目标目录> zh [--force]
 - 安装到项目 aics-docs 目录（git clone 形式）

```bash
# 在你的项目根目录执行：以 vendor 子目录引入并安装到 aics-docs/
git clone https://github.com/Degree-21/AICS.git aics-docs
chmod +x aics-docs/scripts/init-docs.sh
# 将文档复制到项目 aics-docs 目录（英文/中文默认二选一）
aics-docs/scripts/init-docs.sh ./aics-docs en
# 或
aics-docs/scripts/init-docs.sh ./aics-docs zh
```

快速对话上手（克隆后立刻用）
- 1）打开 aics-docs/ 目录中的 docs/USAGE.zh.md
- 2）复制“与 AI 对话剧本”的“系统消息”到你的 AI 工具（系统提示）
- 3）按“步骤 A：需求 → 规格文档”粘贴业务需求，生成规格
- 4）按“步骤 B：规格 → 实现代码”生成代码
- 5）按“步骤 C：规格 → 测试用例”生成并运行测试
- 6）失败时按“步骤 D：验收与调试”闭环修复并回写规格

目录结构
- docs/templates/zh 与 docs/templates/en：规格模板库
- docs/care-framework.zh.md 与 .en.md：CARE 框架
- docs/sources.zh.md 与 .en.md：来源与参考
- README.zh.md 与 README.en.md：语言入口与说明

工作流
- 按复杂度选择模板（函数/API/React/数据库/微服务/系统/重构/迁移/测试）
- 按 CARE 六要素填写：上下文、功能、边界/约束、示例、验收、非功能
- 补充示例与明确、可测试的验收标准
- 基于规格驱动 AI 生成实现与测试（规格为唯一事实来源）
- 使用测试模板进行验证：
  - test-plan、test-case、bug-pattern-checklist、debugging-workflow
- 发现偏差按工作流调试并回写规格，持续收敛

测试重点（AI 特有）
- 控制流、异常、资源、类型、并发、安全、数据校验
- 详见 docs/templates/*/testing 下的结构化指南

CI 建议
- 分层运行测试（单元/集成/端到端）
- 强制契约/Schema 校验与日志断言
- 汇总失败模式并回流到规格

语言导航
- 英文与中文页面顶部均提供互相跳转链接

提示词配方（参考示例）
> 注意：以下仅为示例。AI 在生成代码前应通过分析本项目根目录文件（如 package.json, requirements.txt, go.mod 等）来自动识别技术栈。

- 通用结构
  - 上下文、功能需求、边界与约束、少样本示例、验收标准、非功能需求、输出格式要求

- 生成纯函数实现（示例）

```text
任务：实现一个纯函数 validateUser(input)。
上下文：参考本项目现有技术栈（如 TypeScript/Node.js），函数应无副作用。
功能：校验 {name, email, age}，返回 {valid, errors[]}。
边界与约束：
- age 必须为整数且在 [13,120]
- email 必须符合常用邮箱格式
- name 去除前后空白后长度在 [1,100]
验收标准：
- 覆盖边界与负向用例，抛出错误而不是静默失败
- 纯函数、无 IO 与全局状态
输出：给出函数实现与简短说明。
```

- 生成后端 API 端点（示例）

```text
任务：实现用户注册端点。
上下文：分析本项目后端框架（如 FastAPI/Express/Spring）与数据库依赖。
功能：请求体包含 email, password, name，成功返回 201 与用户信息。
边界与约束：
- email 唯一性校验
- password 强度要求（最少 12 位，含大小写与数字）
验收标准：
- 符合项目架构约定（Service/Controller/Repository 等）
- 错误码定义清晰
输出：路由、模型与逻辑实现；提供负向测试建议。
```

- 生成 React 组件（示例）

```text
任务：实现可访问性好的 <UserForm/>。
上下文：React + TypeScript，受控表单，ARIA 标签完善。
功能：字段 name/email/age 实时校验；提交触发 onSubmit。
验收标准：
- 键盘可操作、屏幕阅读器可读
- 边界与负向校验覆盖
输出：
- 组件代码与基本测试用例（React Testing Library）。
```

- 生成数据库迁移（示例）

```text
任务：增加 users 表唯一索引 email_unique。
上下文：Alembic，PostgreSQL。
验收标准：
- 提供 UP/DOWN，考虑并发与锁
输出：
- 迁移脚本与回滚脚本，附简短说明。
```

- 生成微服务骨架（示例）

```text
任务：用户服务 skeleton。
上下文：Python FastAPI 微服务，Docker，健康检查与 metrics。
验收标准：
- /healthz 返回 200，/metrics 暴露基本指标
- 日志结构化、trace-id 透传
输出：
- 目录结构、关键入口与示例路由。
```

- 生成测试用例（示例）

```text
目标：为 validateUser 编写测试。
要求：
- 覆盖正常/边界/负向
- 断言输出与日志片段（错误路径）
输出：
- 使用 Jest 的测试文件代码。
```

- 系统化调试提示（示例）

```text
目标：针对 /users 端点 409 冲突进行调试。
提供：
- 复现步骤与最小输入
- 当前日志与错误码
请求：
- 给出复现→定位→假设→埋点→测试→修复→验证的步骤
- 提供新增的负向测试与回归测试清单
```

从“需求”到“规格与测试”的流水线提示词
- 步骤 A：需求 → 规格文档

```text
任务：将以下原始需求转化为可执行规格文档。
选择模板：<function-spec | rest-endpoint-spec | react-component-spec | db-migration-spec | microservice-spec | system-architecture-spec | code-refactoring-spec | code-migration-spec>
输出要求：
- 使用 CARE 六要素完整填充（上下文、功能、边界/约束、少样本示例、验收标准、非功能）
- 验收标准需可测试（列出 5–10 条可执行断言/错误码/日志/契约校验）
- 边界与负向场景必须显式
原始需求：
<<< 在此粘贴需求文本 >>> 
```

- 步骤 B：规格 → 实现代码

```text
任务：基于规格文档生成实现代码。
上下文：<技术栈/语言/框架/目录约定>。
约束：
- 严格遵循规格的输入/输出与错误码
- 保持纯函数/契约一致性；禁止隐式共享状态
输出：
- 仅给出核心代码片段（文件路径与内容），避免生成多余文件
- 简述设计权衡（不超过 5 句）
附：规格文档内容（引用或链接）
```

- 步骤 C：规格 → 测试用例

```text
任务：依据规格生成测试用例。
覆盖：
- 正向、负向与边界
- 契约/Schema 验证、日志断言（错误路径）、资源获取/释放
- 类型安全与并发场景（如适用）
输出：
- 使用 <pytest | Jest | RTL | Alembic env> 的测试代码
- 列出测试清单与预期断言要点
附：规格文档内容（引用或链接）
```

- 步骤 D：验收与调试（失败时）

```text
任务：根据验收标准执行检查并对失败项进行调试。
提供：
- 失败用例与最小复现
- 相关日志片段与当前错误码/异常
请求：
- 采用系统化调试工作流：复现→定位→假设→埋点→测试→修复→验证
- 给出需新增的负向与回归测试
输出：
- 修复建议与补充测试代码
```

与 AI 对话剧本（项目导入后）
- 一次性系统设定（复制为“系统消息”）

```text
你是资深软件工程助理，严格遵循规格（CARE 六要素）与本项目约定：
- 以 aics-docs/templates/* 的模板与规格为唯一事实来源
- 在生成代码前，必须深度分析本项目的现有目录结构、代码风格、依赖库及架构约定
- 输出需可执行：代码或测试提供文件路径与内容；不要生成无关文件
- 安全：不泄露密钥，不打印敏感信息；日志仅暴露必要上下文
- 质量门：验收标准必须可测试；覆盖正向/负向/边界；契约/Schema 与日志断言有效
- 风格：保持与现有代码与目录约定一致；解释不超过 5 句
```

- 步骤 A：从需求生成规格（“用户消息”）

```text
请根据以下需求，选择合适模板并生成完整规格文档（CARE 六要素齐全，含 5–10 条可执行验收断言与负向场景）：
需求：
<<< 粘贴业务需求 >>>
模板候选：function-spec | rest-endpoint-spec | react-component-spec | db-migration-spec | microservice-spec | system-architecture-spec | code-refactoring-spec | code-migration-spec
输出：Markdown 规格文本。标题注明所选模板类型。
```

- 步骤 B：依据规格生成实现（“用户消息”）

```text
请基于刚才生成的规格文档，并深度分析本项目现有的代码风格、依赖与架构约定，提供完整实现代码（包含文件路径）。要求严格遵守规格中的约束和错误码定义。
```

- 步骤 C：依据规格生成测试（“用户消息”）

```text
请为刚才的实现编写测试用例。需参考本项目已有的测试框架与风格，覆盖正向、边界、负向场景，并包含 Schema 校验和错误日志断言。
```

- 失败时的调试与回写（“用户消息”）

```text
以下用例失败，请分析本项目上下文后按系统化调试工作流处理，并更新规格与测试：
失败复现：<<< 最小输入与步骤 >>>
日志片段：<<< 错误日志与栈 >>>
输出：
- 复现→定位→假设→埋点→测试→修复→验证 的具体步骤
- 修复代码（文件路径与内容）
- 需新增的负向与回归测试
- 规格文档的修订要点
```
