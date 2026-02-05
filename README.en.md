# Spec-Driven AI Development Templates (English)

English | [中文](./README.zh.md)

This repository focuses on spec-driven development: giving AI high-quality specifications so it can generate production-ready code and tests.

## Index
- Templates library: [docs/templates/en](./docs/templates/en) (beginner/intermediate/advanced/testing)
- CARE framework: [docs/care-framework.en.md](./docs/care-framework.en.md)
- References: [docs/sources.en.md](./docs/sources.en.md)

## Quick Start
- Pick a template based on task complexity (beginner/intermediate/advanced)
- Fill the six components: Context, Functional Requirements, Edge/Constraints, Few-Shot Examples, Acceptance Criteria, Non-Functional Requirements
- Feed the spec to AI tooling; on deviations, refine the spec first, then iterate implementation

## Template Selection
- Function: function-spec (natural language)
- Backend API: rest-endpoint-spec (can mix OpenAPI/Schema)
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

## References
- See [docs/sources.en.md](./docs/sources.en.md) | [中文来源](./docs/sources.zh.md)
