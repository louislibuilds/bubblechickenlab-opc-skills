---
name: opc-analytics
description: >-
  Analytics and metrics advisory for OPC solo products. Event tracking, funnel
  definition, retention signals, and lightweight A/B ideas. Use when measuring
  product usage or defining success metrics. Leadership domain.
disable-model-invocation: true
---

# OPC Analytics

Data feedback loop for solo products. Light instrumentation, not a data team.

## When to Activate

Triggers: analytics, PostHog, Plausible, funnel, retention, metrics, event, track, A/B, conversion rate, north star, AARRR, churn, KPI, MRR, activation.

**Out of scope:** implementing tracking code at scale without Ticket (→ opc-build-frontend + opc-automation).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Product goal | North star metric |
| User journey | Funnel steps (3–5 max) |
| Available tooling | Event list (minimal) |

## Recommended Stack (solo)

| Tool | Use |
|------|-----|
| Plausible / Vercel Analytics | Page views, referrers — zero cookie banner friction |
| PostHog (when needed) | Funnels, feature flags, session replay sparingly |
| Stripe dashboard | Revenue — if paid |

Don't install both heavy suites on day one.

## Minimum Event Set (MVP)

```
page_view
signup_or_first_action  (e.g. editor_open, job_created)
core_value_action       (e.g. resume_export, application_logged)
return_visit_7d         (derived)
```

Max **5 custom events** for first ship.

## Funnel Template

```
Landing → Primary CTA click → Core action complete → Return within 7d
```

Define denominators. Ignore vanity metrics (raw pageviews without CTA click).

## AARRR (solo lens)

| Stage | Solo question | Example metric |
|-------|---------------|----------------|
| **Acquisition** | How do users find us? | Landing → signup rate |
| **Activation** | First value moment? | `core_value_action` within 24h |
| **Retention** | Do they return? | 7-day / 30-day return rate |
| **Revenue** | Are they paying? | MRR, conversion to paid |
| **Referral** | Do they invite others? | Referral link clicks (v2) |

Pick **one north star** per product stage. Pre-PMF: optimize Activation + Retention, not Revenue.

## KPI Review (lightweight)

When user asks for metrics review:

1. State north star metric + current value (or "not instrumented")
2. Name biggest funnel drop-off step
3. One suggested experiment (not a dashboard project)

## Checklist

- [ ] One north star metric tied to Ticket goal
- [ ] Events named consistently (`snake_case`, past tense verbs)
- [ ] No PII in event properties without consent
- [ ] Dashboard link or query documented in Ticket
- [ ] A/B only when traffic justifies it (defer by default)

## Advisory Format

```markdown
### opc-analytics
- [SUGGESTION] Track `core_value_action` event tied to Ticket goal (e.g. export, signup)
- [NIT] Add UTM convention doc in README
```

## Cross-References

- Growth goals → opc-growth-engine
- Instrumentation PR → opc-build-frontend / opc-automation

## OPC Constraints

- Measure after ship, not before building
- Analytics task ≤ 2 hours in same Ticket when possible
- Don't block launch on perfect attribution
