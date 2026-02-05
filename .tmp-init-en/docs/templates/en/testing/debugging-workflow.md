# Systematic Debugging Workflow (AI-Generated Code)

Reproduce
- Stable reproduction with minimal inputs and environment notes

Isolate
- Narrow to module/function/endpoint; disable unrelated paths

Hypothesise
- Likely categories: control flow, contracts, exceptions, resources, types, concurrency, security

Inspect and Instrument
- Add targeted logs and assertions (error paths, resources, types)
- Verify API contracts and schema compliance

Design Tests
- Add negative and edge tests aligned to the suspected category

Fix
- Implement minimal change addressing root cause

Validate
- Run full suite; ensure acceptance criteria pass

Back-Propagate to Spec
- Update specification and examples if assumptions were missing

Prevent Recurrence
- Add regression tests and checklist items

