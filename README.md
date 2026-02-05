# Spec-Driven AI Development Templates

- English: [README.en.md](./README.en.md)
- 中文: [README.zh.md](./README.zh.md)
- Source: https://www.softwareseni.com/

## Index
- Templates library: [docs/templates](./docs/templates) (beginner/intermediate/advanced/testing)
- CARE framework: [docs/care-framework.en.md](./docs/care-framework.en.md)
- References: [docs/sources.en.md](./docs/sources.en.md)
- Usage: [docs/USAGE.en.md](./docs/USAGE.en.md) · [docs/USAGE.zh.md](./docs/USAGE.zh.md)
- Install: [docs/INSTALL.en.md](./docs/INSTALL.en.md) · [docs/INSTALL.zh.md](./docs/INSTALL.zh.md)

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

## Usage (Inline)
- Install & Integrate
  - Clone

    ```bash
    git clone https://github.com/Degree-21/AICS.git
    cd AICS && chmod +x scripts/init-docs.sh
    ```
  - Initialize into your project

    ```bash
    scripts/init-docs.sh ../your-project en
    # Chinese default
    scripts/init-docs.sh ../your-project zh
    # Overwrite existing files
    scripts/init-docs.sh ../your-project en --force
    ```
  - Submodule

    ```bash
    cd your-project
    git submodule add https://github.com/Degree-21/AICS.git vendor/aics-docs
    chmod +x vendor/aics-docs/scripts/init-docs.sh
    vendor/aics-docs/scripts/init-docs.sh . en
    ```
  - Install into aics-docs/ directory

    ```bash
    # From your project root
    git clone https://github.com/Degree-21/AICS.git vendor/aics-docs
    chmod +x vendor/aics-docs/scripts/init-docs.sh
    vendor/aics-docs/scripts/init-docs.sh ./aics-docs en
    # or Chinese default
    vendor/aics-docs/scripts/init-docs.sh ./aics-docs zh
    ```

- Requirement → Spec → Code → Tests
  - Turn requirement into executable spec using a template and the CARE components
  - Generate implementation strictly aligned to the spec
  - Generate tests covering positive/negative/edge, contract/schema and logs
  - Debug systematically; refine the spec when deviations are found
  - Full guide: [USAGE.en.md](./docs/USAGE.en.md) · [USAGE.zh.md](./docs/USAGE.zh.md)
