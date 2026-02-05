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

Option 1: Clone as a Standalone Directory (Recommended)
Run this in your project root:

```bash
git clone https://github.com/Degree-21/AICS.git aics-docs
# The aics-docs/ directory is now ready to use
```

Option 2: Add as a Git Submodule
If your project is a Git repository and you want to keep docs updated:

```bash
git submodule add https://github.com/Degree-21/AICS.git aics-docs
# The aics-docs/ directory is added as a submodule
```

Option 3: Import as a Skill (Advanced)
If your AI editor supports "Skills", you can import AICS as a persistent assistant. See [docs/skills/aics-skill.en.md](./docs/skills/aics-skill.en.md).

See [INSTALL.en.md](./docs/INSTALL.en.md) for more options.

## Install & Use (no jumping needed)
- After cloning, follow these steps to talk to AI:
  - **Give Context**: Mention `#aics-docs` (or refer to the folder) in your chat to ensure AI knows the template library.
  - **Copy System Message**:
    - "Follow the templates in `aics-docs/`, CARE components, and **this project's existing tech stack and directory conventions**; output executable code/tests with file paths; enforce acceptance criteria and non-functional gates; keep explanations under 5 sentences."
  - **Execution Flow**: **Step 0 Generate Project Context Doc** -> Spec -> Code -> Tests -> Debug.

## Real-world Case: One-shot Generation (Phone Registration API)

**Input directly into AI dialogue:**
> "Task: Implement a phone number input and validation API.
> 0. **First, scan the project root and save the identified tech stack, directory structure, and coding style to `aics-docs/project-context.md`.**
> 1. Refer to the `rest-endpoint-spec` template in `aics-docs/` to generate a spec (including phone regex and 5+ acceptance criteria).
> 2. Provide full implementation code (include file paths) based on the spec and by **deeply analyzing `project-context.md` and existing code**.
> 3. Write test cases covering valid, incorrect length, and illegal character scenarios.
> Requirements: Strictly follow error code definitions, output must be executable, and keep explanations under 5 sentences."

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
