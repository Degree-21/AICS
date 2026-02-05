# AI-Generated Code Test Plan Template

Scope
- Module/service/endpoint under test
- In/Out of scope

Objectives
- Validate against specification and acceptance criteria
- Detect AI-specific error patterns systematically

Strategy
- Layers: unit, integration, end-to-end
- Pattern-based checks per category
- Negative testing and boundary coverage

Coverage Targets
- Critical paths: 100% behaviour coverage
- Edge cases: explicitly listed, each has tests
- Data validation: schema compliance assertions

Error Pattern Categories
- Control flow: loops/branches edge coverage
- Exception handling: error-path tests, specific exceptions
- Resource management: open/close, cleanup on errors
- Type safety: type mismatches, conversions, null handling
- Concurrency: races, ordering, synchronization
- Security: injection, XSS, auth/authorisation checks
- Data validation: sanitisation, boundary checks

Fixtures and Data
- Realistic minimal datasets
- Invalid/malicious inputs for negative tests

Tooling and Instrumentation
- Logging assertions for error paths
- Contract/schema validators
- Static analysis and style checks

Entry/Exit Criteria
- Entry: spec complete (CARE components), environments ready
- Exit: all acceptance criteria pass, no critical defects

CI Execution
- Test stages, parallelization, flaky test quarantine
- Reporting: pass rate, failure patterns

Risks and Mitigations
- Known constraints and mitigations

