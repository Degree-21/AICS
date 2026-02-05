# AI Bug Pattern Checklist

Control Flow
- Loop conditions cover boundaries
- Branching includes all scenarios
- Early returns and fall-throughs verified

Exception Handling
- Specific exceptions thrown and caught
- No overly broad catches
- Error messages and codes asserted

Resource Management
- Files, DB connections closed in success and error paths
- Cleanup executed on exceptions
- No leaks observed

Type Safety
- Mismatches detected, conversions validated
- Null/None handling explicit
- Schema/contract compliance

Concurrency
- No races or deadlocks
- Proper synchronization/ordering
- Idempotency where required

Security
- Injection/XSS prevented
- Auth/authorisation enforced
- Sensitive data not logged

Data Validation
- Sanitisation and boundary checks
- Invalid inputs rejected with clear errors

