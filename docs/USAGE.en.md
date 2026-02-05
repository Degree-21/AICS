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

Prompt Recipes (copy-paste ready)
- General structure
  - Context, Functional Requirements, Boundaries/Constraints, Few-shot Examples, Acceptance Criteria, Non-Functional Requirements, Output format

- Generate a pure function (example)

```text
Task: Implement a pure function validateUser(input).
Context: Node.js, TypeScript, no side effects.
Function: validate {name, email, age} → {valid, errors[]}.
Boundaries:
- age is integer in [13,120]
- email matches basic RFC5322
- name trimmed length in [1,100]
Examples:
- {name:"  ", email:"a@b", age:12} → valid:false, errors include AGE_MIN and NAME_REQUIRED
Acceptance:
- Cover edge and negative cases; never silently fail
- Pure function, no IO/global state
Non-functional:
- Maintainability and clear error codes/messages
Output:
- Provide TypeScript implementation and brief rationale; no extra files.
```

- Generate REST endpoint (example)

```text
Task: Implement POST /users registration endpoint.
Context: FastAPI + Pydantic, PostgreSQL, JWT.
Request: {email, password, name}; Response: 201 with {id, email, name}.
Boundaries:
- email unique
- password ≥12 chars with upper/lower/digits
- name non-empty
Acceptance:
- OpenAPI and Pydantic schemas aligned
- Error codes: 400 validation, 409 conflict, 500 internal
Non-functional:
- Log failure cause without leaking sensitive info
Output:
- Router, models and service example; include 5 negative tests.
```

- Generate React component (example)

```text
Task: Implement accessible <UserForm/>.
Context: React + TypeScript, controlled inputs, ARIA properly labeled.
Function: Fields name/email/age with live validation; submit triggers onSubmit.
Acceptance:
- Keyboard operable and screen-reader friendly
- Cover edge and negative validations
Output:
- Component code and basic tests (React Testing Library).
```

- Generate DB migration (example)

```text
Task: Add unique index email_unique to users.
Context: Alembic, PostgreSQL.
Acceptance:
- Provide UP/DOWN; consider concurrency/locks
Output:
- Migration and rollback scripts with short explanation.
```

- Generate microservice skeleton (example)

```text
Task: User service skeleton.
Context: Python FastAPI microservice, Docker, health and metrics endpoints.
Acceptance:
- /healthz returns 200; /metrics exposes basic counters
- Structured logging and trace-id propagation
Output:
- Directory layout, main entry and sample routes.
```

- Generate test cases (example)

```text
Goal: Write tests for validateUser.
Requirements:
- Cover normal/edge/negative
- Assert outputs and key log fragments (error paths)
Output:
- Jest test file code.
```

- Systematic debugging prompt (example)

```text
Goal: Debug 409 conflicts on /users.
Provide:
- Reproduction steps with minimal inputs
- Current logs and error codes
Request:
- Steps for reproduce → isolate → hypothesis → instrumentation → tests → fix → validate
- Negative tests and regression checklist to add
```
