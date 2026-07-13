# Create a Skill

Guide for authoring a new OPC domain skill.

## File Structure

```
skills/{leadership|engineering|marketing}/opc-my-domain/
  SKILL.md          # required — agent instructions
  reference/        # optional — deep docs
```

`opc-os/` stays at repo root. Install flattens all `opc-*` to `~/.cursor/skills/`.

## SKILL.md Template

```markdown
---
name: opc-my-domain
description: >-
  One-line what it does. Include trigger keywords: foo, bar, baz.
  Use when [scenarios]. [Dept] domain.
disable-model-invocation: true   # optional — for sub-skills
---

# OPC My Domain

## When to Activate

Triggers: foo, bar, baz.

**Out of scope:** ... (→ other-skill)

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| ... | ... |

## Checklist

- [ ] ...

## Advisory Format

\`\`\`markdown
### opc-my-domain
- [SUGGESTION] ...
\`\`\`

## Cross-References

- ...

## OPC Constraints

- Solo founder scope only
- Max 3 advisory bullets per Ticket
```

## Metadata Checklist

Register in `reference/skill.schema.json`:

```json
{
  "name": "opc-my-domain",
  "domain": "my_domain",
  "dept_tag": "engineering",
  "complexity": "medium",
  "inputs": ["spec"],
  "outputs": ["advisory"],
  "triggers": ["foo", "bar"],
  "dependencies": ["opc-build-engine"],
  "blocks_on_critical": false
}
```

| Field | Purpose |
|-------|---------|
| `triggers` | Keyword router matching |
| `dependencies` | Upstream skills whose outputs may be assumed |
| `blocks_on_critical` | `true` only for security / major brand gate |

## Naming Rules

- `opc-{domain}` for top-level domains
- `opc-build-{sub}` for engineering sub-skills
- Never `opc-OS` or mixed case
- Description must answer: **when should Cursor load this?**

## Advisory Rules

Follow [parallel-review-protocol.md](../reference/parallel-review-protocol.md):

- Max **3 bullets** per domain per Ticket
- Severities: `CRITICAL` | `SUGGESTION` | `NIT`
- No debate between domains
- No scope expansion beyond Ticket goal

## Test Your Skill

1. Install locally: `./install.sh`
2. In Cursor: `@opc-my-domain <task that matches triggers>`
3. Verify advisory format and bullet cap
4. Add example to `examples/` if it demonstrates a new pattern

## Submit

See [CONTRIBUTING.md](../CONTRIBUTING.md). Update schema, SKILL-GRAPH, SKILL_LIBRARY changelog.

## Planned Domains (community welcome)

| Skill | Scope |
|-------|-------|
| `opc-build-devops` | Docker, CI/CD, GitHub Actions, deploy, monitoring |
| `opc-customer-support` | FAQ, email templates, triage, bug reports |
| `opc-finance` | Pricing models, cash flow, MRR, burn rate |
| `opc-hiring` | JD, interview scorecard, onboarding |

Open an issue before large new domains to avoid overlap.
