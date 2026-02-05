# 规格驱动 AI 开发文档模板

本模板将“规范驱动开发”方法落地到可执行的文档骨架，帮助团队以规格为唯一事实来源，借助 AI 理解规格并生成一致、可维护、可验证的生产级代码。

## 目标
- 以规格为源：OpenAPI、JSON Schema、结构化需求文档成为唯一事实来源
- 流程可复用：Specify → Plan → Tasks → Implement → Validate → Refine
- 质量可验证：内置质量门与验证清单，降低安全与稳定性风险
- 降低编码：通过高质量规格，引导 AI 生成实现与测试

## 目录结构
- docs：模板库与 CARE 框架（中英文）
  - 模板库：docs/templates
    - 入门：函数规格模板
      - [function-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/function-spec.md)
      - [function-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/function-spec.md)
    - 中级：API/React/数据库迁移
      - [rest-endpoint-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/rest-endpoint-spec.md)
      - [rest-endpoint-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/rest-endpoint-spec.md)
      - [react-component-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/react-component-spec.md)
      - [react-component-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/react-component-spec.md)
      - [db-migration-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/db-migration-spec.md)
      - [db-migration-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/db-migration-spec.md)
    - 高级：微服务/系统架构/重构/代码迁移
      - [microservice-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/microservice-spec.md)
      - [microservice-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/microservice-spec.md)
      - [system-architecture-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/system-architecture-spec.md)
      - [system-architecture-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/system-architecture-spec.md)
      - [code-refactoring-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/code-refactoring-spec.md)
      - [code-refactoring-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/code-refactoring-spec.md)
      - [code-migration-spec.md (EN)](file:///Users/macbookpro/21/python/AICS/docs/templates/en/code-migration-spec.md)
      - [code-migration-spec.md (ZH)](file:///Users/macbookpro/21/python/AICS/docs/templates/zh/code-migration-spec.md)
  - CARE 框架：docs/care-framework.en.md、docs/care-framework.zh.md

## 快速开始
- 选择任务复杂度对应的模板（入门/中级/高级）
- 按模板填写六要素：上下文、功能需求、边界与约束、少样本示例、验收标准、非功能需求
- 将规格交给 AI 工具生成代码与测试；发现偏差先回写规格再迭代实现

## 工作流
- Specify：编写详细、可执行的规格（包含 CARE 六要素）
- Implement：依据规格生成实现与测试，保持一致性
- Validate：用验收标准验证生成结果
- Refine：将错误与偏差回流到规格，持续收敛

## 关键约定
- 规格即源：以模板编写的规格为唯一真相
- 明确验收：每项功能需定义可测试的 Done 标准
- 非功能显式：安全、性能、可靠性、可维护性必须明确

## 使用建议
- 先规格后编码，避免即兴提示导致质量漂移
- 规格越具体，AI 生成质量越高；避免含糊描述
- 小步迭代，验证后回写规格再生成

## 模板选择指南
- 简单函数：函数规格模板（自然语言）
- 后端接口：REST 端点模板（可混合 OpenAPI/Schema）
- 前端组件：React 组件模板（可访问性与状态）
- 数据层变更：数据库迁移模板（UP/DOWN 与回滚）
- 独立服务：微服务模板（边界、依赖、可观察性）
- 跨系统设计：系统架构模板（ADR 与运行特性）
- 渐进改进：重构模板（行为保持与测试通过）
- 平台/框架迁移：代码迁移模板（分阶段发布与回滚）

## 版权与许可
- 开源模板，可自由使用与修改；请在派生项目中保留核心目录结构与质量门
