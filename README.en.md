# Spec-Driven AI Development Templates (English)

English | [中文](./README.zh.md)

This repository focuses on spec-driven development: giving AI high-quality specifications so it can generate production-ready code and tests.

## Purpose
- Provide reusable bilingual templates and workflows so teams can turn requirements into executable specs, generate implementation and tests with AI, and iterate safely with explicit acceptance and non-functional gates.

## Index
- Templates library: [docs/templates/en](./docs/templates/en) (beginner/intermediate/advanced/testing)
- CARE framework: [docs/care-framework.en.md](./docs/care-framework.en.md)
- References: [docs/sources.en.md](./docs/sources.en.md)
- Usage: [docs/USAGE.en.md](./docs/USAGE.en.md)
 - Install: [docs/INSTALL.en.md](./docs/INSTALL.en.md)

## Quick Start
- Pick a template based on task complexity (beginner/intermediate/advanced)
- Fill the six components: Context, Functional Requirements, Edge/Constraints, Few-Shot Examples, Acceptance Criteria, Non-Functional Requirements
- Feed the spec to AI tooling; on deviations, refine the spec first, then iterate implementation
- To initialize docs into another project: run `scripts/init-docs.sh <target_dir> en [--force]`

## Install & Integrate
- Copy into a project

```bash
# From this repo root, initialize docs into target project
scripts/init-docs.sh ../your-project en
# Overwrite existing files if needed
scripts/init-docs.sh ../your-project en --force
```

- Use as a submodule

```bash
# From your target project root
git submodule add <this-repo-url> vendor/aics-docs
# Initialize docs into project root (keep English as default)
vendor/aics-docs/scripts/init-docs.sh . en
```

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
