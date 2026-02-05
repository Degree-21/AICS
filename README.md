# Spec-Driven AI Development Templates

- English: [README.en.md](./README.en.md)
- 中文: [README.zh.md](./README.zh.md)
- Source: https://www.softwareseni.com/

## Index
- Templates library: [docs/templates](./docs/templates) (beginner/intermediate/advanced/testing)
- CARE framework: [docs/care-framework.en.md](./docs/care-framework.en.md)
- References: [docs/sources.en.md](./docs/sources.en.md)

## Quick Start
- Pick a template by task complexity (beginner/intermediate/advanced/testing) under docs/templates
- Fill six components: Context, Functional Requirements, Edge/Constraints, Few-Shot Examples, Acceptance Criteria, Non-Functional Requirements
- Generate code and tests with AI; when deviations appear, refine the specification first, then iterate implementation
- Use testing templates (test-plan, test-case, bug-pattern-checklist, debugging-workflow) to validate systematically

## Template Selection
- Function: function-spec (natural language)
- Backend API: rest-endpoint-spec (mix OpenAPI/Schema as needed)
- Frontend component: react-component-spec (accessibility and state)
- Data layer change: db-migration-spec (UP/DOWN and rollback)
- Independent service: microservice-spec (boundaries, dependencies, observability)
- Cross-system design: system-architecture-spec (ADRs and operational characteristics)
- Incremental improvement: code-refactoring-spec (behaviour preservation and tests)
- Platform/framework migration: code-migration-spec (phased rollout and rollback)
- Testing: test-plan, test-case, bug-pattern-checklist, debugging-workflow

## Core Agreements
- Specs are the single source of truth
- Acceptance criteria must be testable
- Non-functional requirements must be explicit (security, performance, reliability, maintainability)
