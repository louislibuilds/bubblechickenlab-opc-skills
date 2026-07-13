---
name: opc-build-backend-api
description: >-
  Backend and API advisory for OPC solo products. Contract-first API design,
  database schema, authentication, and payments (Stripe). Use when designing
  endpoints, server logic, or data models. Sub-skill of opc-build-engine.
disable-model-invocation: true
---

# OPC Build — Backend & API

## When to Activate

Triggers: API, REST, GraphQL, backend, database, schema, migration, auth, JWT, session, Stripe, webhook, Supabase, server action.

**Out of scope:** pure UI (→ opc-build-frontend), marketing copy (→ opc-content-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Feature spec | API contract sketch |
| Data entities | Schema / migration notes |
| Auth requirements | Auth flow advisory |

## Checklist

- [ ] Contract-first: define request/response shapes before implementation
- [ ] Validate at boundaries (Zod, JSON schema, or equivalent)
- [ ] Error responses: stable codes, no stack traces to client
- [ ] Idempotent webhooks where applicable
- [ ] Migrations reversible or documented
- [ ] Index columns used in filters/joins
- [ ] Auth: least privilege; no secrets in client bundle

## API Principles

- **Hyrum's Law:** public APIs will be depended on — version or freeze carefully
- **One-Version Rule:** avoid parallel API versions for solo MVP
- Pagination defaults for list endpoints
- Use existing ORM/query patterns in repo

## Advisory Format

```markdown
### opc-build-backend-api
- [SUGGESTION] Add unique constraint on user_id + job_id for idempotency
- [CRITICAL] Endpoint returns PII without auth check
```

## Cross-References

- Security review → opc-build-security (always for auth/payments)
- Tests → opc-build-qa
- Frontend consumption → opc-build-frontend

## OPC Constraints

- Prefer BaaS (Supabase) or serverless routes when already in stack
- No separate API gateway for MVP
- Stripe: use Checkout or Customer Portal before custom billing UI
- Respect existing data export formats; don't break schemas without migration plan
