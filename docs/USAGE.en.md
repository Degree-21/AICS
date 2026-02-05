# Usage Guide

Purpose
- Help teams initialize docs, write specs, generate code/tests, and iterate

Prerequisites
- Clone or include this repository; ensure shell can run scripts/init-docs.sh

Initialize
- Copy docs and READMEs into your project
 - Option 1: Clone into project root (Recommended)

```bash
# From your project root
git clone https://github.com/Degree-21/AICS.git aics-docs
# The aics-docs/ directory is now ready to use
```

 - Option 2: Add as a submodule

```bash
# From your target project root
git submodule add https://github.com/Degree-21/AICS.git aics-docs
```

 - Option 3: Manual extraction (Advanced)

```bash
# Clone to temp dir
git clone https://github.com/Degree-21/AICS.git temp-aics
chmod +x temp-aics/scripts/init-docs.sh
# Copy docs into your project's aics-docs/
temp-aics/scripts/init-docs.sh ./aics-docs en
# Cleanup
rm -rf temp-aics
```

Quick Dialogue Start (right after clone)
- 1) Open docs/USAGE.en.md inside aics-docs/
- 2) Copy the “System Message” under “Dialogue Scripts” into your AI tool
- 3) Run “Step A: Requirement → Spec” by pasting your requirement
- 4) Run “Step B: Spec → Implementation”
- 5) Run “Step C: Spec → Tests” and execute tests
- 6) If failures happen, follow “Step D: Acceptance & Debugging” and update the spec

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

Prompt Recipes (Reference Examples)
> Note: The following are examples only. Before generating code, AI should analyze root files (e.g., package.json, requirements.txt, go.mod) to identify the project stack automatically.

- General structure
  - Context, Functional Requirements, Boundaries/Constraints, Few-shot Examples, Acceptance Criteria, Non-Functional Requirements, Output format

- Generate a pure function (example)

```text
Task: Implement a pure function validateUser(input).
Context: Follow this project's existing stack (e.g., TypeScript/Node.js); function should be side-effect free.
Function: validate {name, email, age} → {valid, errors[]}.
Boundaries:
- age is integer in [13,120]
- email matches standard email formats
- name trimmed length in [1,100]
Acceptance:
- Cover edge and negative cases; never silently fail
- Pure function, no IO/global state
Output: Provide function implementation and short rationale.
```

- Generate Backend API Endpoint (example)

```text
Task: Implement user registration endpoint.
Context: Analyze this project's backend framework (e.g., FastAPI/Express/Spring) and database dependencies.
Function: Request body includes email, password, name; returns 201 with user info on success.
Boundaries:
- Email uniqueness validation
- Password strength (min 12 chars, upper/lower/digits)
Acceptance:
- Follow project architectural patterns (Service/Controller/Repository, etc.)
- Clear error code definitions
Output: Routes, models, and logic implementation; provide negative test suggestions.
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

Dialogue Scripts (Post-Import)
- One-time System Setting (Copy as "System Message")

```text
You are a senior software engineering assistant, strictly following specifications (CARE components) and project conventions:
- Use templates in aics-docs/templates/* as the single source of truth.
- Output must be executable: provide full code/tests with file paths and contents; do not generate unrelated files.
- Security: Do not leak keys or print sensitive info; logs should expose only necessary context.
- Quality Gates: Acceptance criteria must be testable; cover positive/negative/edge cases; ensure contract/schema and log assertions are valid.
- Style: Maintain consistency with existing code and directory conventions; keep explanations under 5 sentences.
```

- Step 0: Project Recognition & Init ("User Message")

```text
Please scan and analyze the project root (e.g., package.json, go.mod, pom.xml, requirements.txt) to identify the tech stack.
Summarize your understanding of the tech stack, directory structure, coding style, and dependencies into a Markdown file and save it to `aics-docs/project-context.md`.
If the project is empty, recommend a suitable stack based on my requirements, generate the initial scaffold, and update the context document accordingly.
```

- Step A: Requirement -> Spec ("User Message")

```text
Please generate a complete specification document based on the following requirement, choosing the appropriate template (CARE components fully filled, with 5-10 testable acceptance criteria and negative scenarios):
Requirement:
<<< Paste business requirement >>>
Template candidates: function-spec | rest-endpoint-spec | react-component-spec | db-migration-spec | microservice-spec | system-architecture-spec | code-refactoring-spec | code-migration-spec
Output: Markdown specification text. State the chosen template type in the title.
```

- Step B: Spec -> Implementation ("User Message")

```text
Please provide the full implementation code (including file paths) based on the specification document generated above, by deeply analyzing this project's existing coding style, dependencies, and architectural patterns. Strictly follow the constraints and error code definitions in the spec.
```

- Step C: Spec -> Test Cases ("User Message")

```text
Please write test cases for the implementation above. Refer to the existing testing framework and style of this project, covering positive, edge, and negative scenarios, and include schema validation and error log assertions.
```

- Debugging & Updating Spec ("User Message")

```text
The following case failed. Please analyze the project context and follow the systematic debugging workflow to fix it and update the spec:
Reproduction: <<< Minimal input and steps >>>
Logs: <<< Error logs and stack trace >>>
Output:
- Steps for reproduce → isolate → hypothesis → instrumentation → tests → fix → validate
- Fix code (file paths and contents)
- New negative and regression tests
- Key points for specification revision
```
