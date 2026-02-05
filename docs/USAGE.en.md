# Usage Guide

Purpose
- Help teams initialize docs, write specs, generate code/tests, and iterate

Prerequisites
- Clone or include this repository; ensure shell can run scripts/init-docs.sh

Initialize
- Copy docs and READMEs into your project
- English default: scripts/init-docs.sh <target_dir> en [--force]
- Chinese default: scripts/init-docs.sh <target_dir> zh [--force]

Directory Layout
- docs/templates/en and docs/templates/zh: specification templates
- docs/care-framework.en.md and .zh.md: CARE framework
- docs/sources.en.md and .zh.md: sources and references
- README.en.md and README.zh.md: entry docs with language switching

Workflow
- Choose a template based on complexity (function/API/React/DB/microservice/system/refactor/migration/testing)
- Fill CARE components: Context, Functional Requirements, Edge/Constraints, Examples, Acceptance Criteria, Non-Functional Requirements
- Provide examples and explicit acceptance tests
- Generate implementation and tests with your AI tool using the spec as the single source of truth
- Validate using testing templates:
  - test-plan, test-case, bug-pattern-checklist, debugging-workflow
- Debug systematically and refine the spec when deviations are found

Testing Focus (AI-specific)
- Control flow, exceptions, resources, types, concurrency, security, data validation
- See docs/templates/*/testing files for structured guides

CI Suggestions
- Run tests in stages (unit/integration/e2e)
- Enforce contract/schema checks and logging assertions
- Report failure patterns to feed back into specs

Language Navigation
- English and Chinese pages include mutual links at the top for quick switching

