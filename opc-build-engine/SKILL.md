---
name: opc-build-engine
description: >-
  Engineering bus for OPC solo products. Decomposes specs into frontend, backend,
  QA, and security workstreams. Use when building features, fixing bugs, or
  implementing architecture. Invoked by opc-os or @opc-build-engine.
disable-model-invocation: true
---

# OPC Build Engine

Engineering domain bus. Routes implementation work to specialized sub-skills without sequential role-play.

## When to Activate

- User wants to build, implement, refactor, or fix code
- Ticket type is `feature` or `bug`
- Architecture or stack decisions for MVP

**Out of scope:** pure marketing, pricing strategy (→ opc-product-thinking, opc-growth-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Spec or Ticket goal | Implementation plan |
| MVP scope | Sub-skill routing list |
| Stack constraints | Architecture sketch |

## Sub-Skill Routing

| Signal | Delegate to |
|--------|-------------|
| UI, pages, components, CSS, a11y | opc-build-frontend |
| API, DB, auth, payments | opc-build-backend-api |
| Tests, acceptance, regression | opc-build-qa |
| Security, secrets, deploy surface | opc-build-security |

Invoke multiple sub-skills in **parallel advisory** when Ticket touches several layers.

## Checklist

- [ ] Confirm MVP scope fits ≤2 weeks solo
- [ ] Choose simplest stack already in repo (don't introduce new framework without reason)
- [ ] Identify vertical slice (thin end-to-end path first)
- [ ] Route to sub-skills; collect advisory (max 3 bullets each)
- [ ] Only `CRITICAL` from opc-build-security blocks ship
- [ ] Output ordered execution steps with file-level hints when known

## Advisory Format

```markdown
### opc-build-engine
- [SUGGESTION] Prefer vertical slice: API route + one UI screen before polish
- [SUGGESTION] Reuse existing auth middleware
```

## Cross-References

- Frontend tokens → opc-ux-design
- Growth/SEO meta in same PR → opc-growth-engine
- New tracking → opc-analytics

## OPC Constraints

- Solo builder: no microservices, no premature abstraction
- One slice at a time: implement → test → commit
- Match existing repo conventions (read surrounding code first)
- Default stacks: match existing repo (React/Next, Vite, etc.) — don't introduce new framework without reason

## Lifecycle (addyosmani-aligned)

```
Define → Plan → Build → Verify → Review → Ship
```

This skill owns **Plan → Build** handoff. opc-build-qa owns Verify. opc-build-security owns Review gate (CRITICAL only).
