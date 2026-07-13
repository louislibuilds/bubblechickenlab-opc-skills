---
name: opc-product-thinking
description: >-
  Product strategy and MVP scoping for OPC solo founders. Idea validation, PRD
  lite, user personas, and pricing hypotheses. Use when deciding what to build,
  scoping MVPs, or validating ideas. Leadership domain.
disable-model-invocation: true
---

# OPC Product Thinking

CEO / product domain. Decides **what** to build and **what to cut**.

## When to Activate

Triggers: idea, MVP, pricing, validate, PRD, scope, persona, positioning, should I build, pivot.

**Out of scope:** implementation details (→ opc-build-engine), channel tactics (→ opc-growth-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Raw idea or problem | Validated problem statement |
| Constraints (time, stack) | MVP scope (in/out) |
| Target user | Persona (1 paragraph) |
| Monetization intent | Pricing hypothesis |

## Idea Validation (fast)

1. Who suffers this problem weekly?
2. What do they use today (spreadsheet, competitor, nothing)?
3. Can solo ship a 10x better **slice** in 2 weeks?
4. Will user pay or engage (waitlist, export, return visit)?

If 2+ answers are weak → narrow scope or pick adjacent slice.

## MVP Scope Template

```markdown
## In scope (v1)
- ...

## Out of scope (explicit)
- ...

## Success metric (one)
- ...

## Time box
- N days solo
```

## Pricing Hypothesis (solo)

| Stage | Approach |
|-------|----------|
| Pre-revenue | Free + waitlist or free core |
| First revenue | One paid tier, one price |
| Later | Usage or seat-based — not before PMF signal |

Pre-revenue solo products: optimize for adoption first unless user states monetization goal.

## Checklist

- [ ] Problem statement in one sentence
- [ ] Single primary user persona
- [ ] MVP ≤ 2 weeks solo (or explicit exception)
- [ ] One success metric
- [ ] Explicit "won't do" list
- [ ] Growth loop named (even placeholder)

## Advisory Format

```markdown
### opc-product-thinking
- [SUGGESTION] Cut PDF themes v2 — ship SEO + export fix only
- [SUGGESTION] Success metric: landing → editor open rate
```

## Cross-References

- Architecture → opc-build-engine
- Go-to-market → opc-growth-engine
- Weekly priority → opc-founder-os

## OPC Constraints

- One MVP at a time
- Prefer validating with shipped slice over surveys
- Don't write 20-page PRDs — one page max
- Reuse existing codebases before greenfield repo when scope allows
