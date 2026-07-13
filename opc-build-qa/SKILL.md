---
name: opc-build-qa
description: >-
  QA and testing advisory for OPC solo products. Lightweight TDD, acceptance
  criteria, and regression checks. Use when verifying behavior, writing tests,
  or defining done. Sub-skill of opc-build-engine.
disable-model-invocation: true
---

# OPC Build — QA

## When to Activate

Triggers: test, QA, TDD, acceptance, regression, verify, bug reproduction, edge case.

**Out of scope:** security audit depth (→ opc-build-security), performance profiling (note as deferred).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Changed behavior | Test plan (minimal) |
| Acceptance criteria | Pass/fail checklist |
| Bug report | Reproduction steps |

## Checklist

- [ ] Reproduce bug before fix (when applicable)
- [ ] One test per changed behavior (unit or integration)
- [ ] Test names describe behavior, not implementation
- [ ] Happy path + one failure path for new endpoints
- [ ] Manual smoke checklist for UI-only changes without test infra
- [ ] Run existing test suite before ship

## Solo TDD (pragmatic)

```
Red → Green → Refactor
```

Pyramid default for OPC:

- 80% unit (pure logic)
- 15% integration (API, DB)
- 5% e2e (critical user path only)

Skip e2e setup for tiny fixes. Never skip tests for payment or auth logic.

## Advisory Format

```markdown
### opc-build-qa
- [SUGGESTION] Add test for empty-state when jobs list is zero
- [CRITICAL] Regression: export breaks when locale is ja
```

## Cross-References

- Security-sensitive paths → opc-build-security must also pass
- Frontend-only → opc-build-frontend smoke items

## OPC Constraints

- Tests must justify their maintenance cost
- Prefer testing public interfaces over internals
- "Done" = criteria met + no CRITICAL QA/security items
- Don't block ship on missing tests for copy-only changes
