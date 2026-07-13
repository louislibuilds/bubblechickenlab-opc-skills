# Contributing to OPC Skill OS

Thank you for helping build the solo founder AI operating system for Cursor.

## Ways to Contribute

| Type | Examples |
|------|----------|
| **New skill** | `opc-build-devops`, domain-specific advisory |
| **Skill improvement** | Better checklists, triggers, anti-patterns |
| **Documentation** | README, architecture, translations |
| **Bug reports** | Routing mistakes, broken install, stale examples |
| **Examples** | Ticket walkthroughs for real product types |

## Before You Start

1. Read [docs/architecture.md](docs/architecture.md) — understand Ticket → Router → Advisory flow
2. Read [docs/create-skill.md](docs/create-skill.md) — skill format and naming
3. Check [reference/skill.schema.json](reference/skill.schema.json) — avoid duplicate triggers

## File Structure

```
opc-os/                          # orchestrator — repo root
skills/
  leadership/opc-product-thinking/
  engineering/opc-build-frontend/
  marketing/opc-growth-engine/
reference/                       # shared specs
```

New skills go under `skills/{leadership|engineering|marketing}/opc-{name}/`.

Rules:

- Lowercase, hyphen-separated; prefix always `opc-`
- Place under `skills/leadership/`, `skills/engineering/`, or `skills/marketing/`
- `opc-os` is the only skill at repo root
- Description in YAML frontmatter must include **when to use** triggers
- Engineering sub-skills set `disable-model-invocation: true`

## Pull Request Process

1. Fork → branch from `main` (`feat/opc-build-devops` or `docs/improve-readme`)
2. One concern per PR (one skill, or one doc topic)
3. Update `reference/skill.schema.json` if adding/changing skills
4. Update `reference/SKILL-GRAPH.md` if routing chains change
5. Log in `SKILL_LIBRARY.md` changelog section
6. English skill content only (README translations follow separately on major changes)

## Skill PR Checklist

- [ ] `SKILL.md` has valid YAML frontmatter (`name`, `description`)
- [ ] Triggers documented in description and body
- [ ] Advisory format matches [parallel-review-protocol.md](reference/parallel-review-protocol.md)
- [ ] Max 3 bullets per domain in examples
- [ ] No product-specific branding (keep generic; local presets are user-owned)
- [ ] Schema entry added/updated

## Code of Conduct

Be direct, be kind, optimize for solo founders shipping real products. No AI-slop padding in skill content.

## Questions

Open a [GitHub Issue](https://github.com/louislibuilds/bubblechickenlab-opc-skills/issues) with the `question` label.
