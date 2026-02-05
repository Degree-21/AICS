# 使用指南

目的
- 帮助团队初始化文档、编写规格、生成代码与测试并迭代

前置
- 克隆或引入本仓库；确保能运行 scripts/init-docs.sh

初始化
- 将 docs 与 README 拷贝到目标项目
- 英文默认：scripts/init-docs.sh <目标目录> en [--force]
- 中文默认：scripts/init-docs.sh <目标目录> zh [--force]

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

