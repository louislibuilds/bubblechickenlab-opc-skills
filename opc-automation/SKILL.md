---
name: opc-automation
description: >-
  Automation and workflow advisory for OPC solo founders. CI/CD, cron jobs, AI
  agent hooks, and repetitive task scripts. Use when automating deployments,
  content pipelines, or background jobs. Engineering domain.
disable-model-invocation: true
---

# OPC Automation

AI amplifier layer — automate repeat work, not thinking.

## When to Activate

Triggers: automate, cron, workflow, CI, GitHub Actions, deploy script, hook, scheduled, batch, agent integration.

**Out of scope:** product strategy (→ opc-product-thinking), marketing copy (→ opc-content-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Repetitive manual task | Automation design (minimal) |
| Repo CI state | Pipeline advisory |
| Schedule requirement | Cron / Action sketch |

## Automation Priority

Automate when:

1. Task runs **weekly+** and takes **>15 min**
2. Human error risk is high (deploy, migration)
3. Same steps every release (lint, test, build)

Do **not** automate one-off tasks or exploratory work.

## Solo CI Baseline

```yaml
# Minimum GitHub Actions mental model
on: [push, pull_request]
jobs:
  check:
    - install
    - lint
    - test
    - build
```

Vercel/Fly handles deploy on merge — don't duplicate unless needed.

## Cursor / Agent Automation

| Pattern | Use |
|---------|-----|
| Cursor hooks | Format on save, pre-commit checks |
| OPC skills | Repeatable PLAN → BUILD via @opc-os |
| Scripts in `scripts/` | One command ops (seed, backup) |

## Checklist

- [ ] Automation saves real time (estimate minutes/week)
- [ ] Secrets in CI env, not repo
- [ ] Idempotent scripts (safe to re-run)
- [ ] Failure notifications (email or GitHub check)
- [ ] Document one-line "how to run" in README

## Advisory Format

```markdown
### opc-automation
- [SUGGESTION] Add GH Action: test on PR only, deploy on main
- [SUGGESTION] Script `npm run og:generate` for OG images on release
```

## Cross-References

- Implementation → opc-build-engine
- Verify pipeline → opc-build-qa
- Content schedule → opc-content-engine (Typefully/manual OK for MVP)

## OPC Constraints

- No Kubernetes, no self-hosted runner for MVP
- Prefer platform defaults (Vercel, Supabase cron)
- One automation per Ticket unless tightly related
