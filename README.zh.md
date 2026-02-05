# 规格驱动 AI 开发文档模板（中文）

[English](./README.en.md) | 中文

本模板聚焦于以“规范驱动开发”为核心，让 AI 基于高质量规格生成可用于生产的代码与测试。

## 目录
- 模板库：[docs/templates](./docs/templates)（入门/中级/高级/测试）
- CARE 框架：[docs/care-framework.zh.md](./docs/care-framework.zh.md)
- 参考来源：[docs/sources.zh.md](./docs/sources.zh.md)

## 快速开始
- 选择任务复杂度对应的模板（入门/中级/高级）
- 按模板填写六要素：上下文、功能需求、边界与约束、少样本示例、验收标准、非功能需求
- 将规格交给 AI 工具生成代码与测试；发现偏差先回写规格再迭代实现

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
