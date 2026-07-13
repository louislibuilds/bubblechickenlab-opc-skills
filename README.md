# OPC Skill OS

**Languages:** English | [繁體中文](docs/README.zh-TW.md) | [简体中文](docs/README.zh-CN.md) | [日本語](docs/README.ja.md)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

One-Person Company AI Operating System for [Cursor](https://cursor.com).

Turn every prompt into a **Ticket**, route to **8 Skill Domains**, run **parallel advisory** reviews without blocking execution, and ship MVP-first.

## Quick Start

```bash
# 1. Install globally
./install.sh          # macOS / Linux
.\install.ps1         # Windows
```

```
# 2. Open any project in Cursor, then:
@opc-os My SaaS landing page needs SEO meta tags. Ship this week.
```

That's it — `@opc-os` runs PLAN MODE, routes domains, and outputs your next action.

## Directory Map

| Skill | Domain | Dept tag | Role |
|-------|--------|----------|------|
| [opc-os](opc-os/SKILL.md) | meta | leadership | Orchestrator, PLAN MODE, Ticket routing |
| [opc-product-thinking](opc-product-thinking/SKILL.md) | 1 | leadership | MVP, pricing, validation |
| [opc-build-engine](opc-build-engine/SKILL.md) | 2 | engineering | Engineering bus |
| [opc-build-frontend](opc-build-frontend/SKILL.md) | 2 | engineering | UI, components, a11y |
| [opc-build-backend-api](opc-build-backend-api/SKILL.md) | 2 | engineering | API, DB, auth |
| [opc-build-qa](opc-build-qa/SKILL.md) | 2 | engineering | Tests, acceptance |
| [opc-build-security](opc-build-security/SKILL.md) | 2 | engineering | OWASP quick gate |
| [opc-growth-engine](opc-growth-engine/SKILL.md) | 3 | marketing | SEO, conversion, acquisition |
| [opc-ux-design](opc-ux-design/SKILL.md) | 4 | marketing | UX flows, design system |
| [opc-analytics](opc-analytics/SKILL.md) | 5 | leadership | Events, funnels, A/B |
| [opc-automation](opc-automation/SKILL.md) | 6 | engineering | Workflows, agents, cron |
| [opc-content-engine](opc-content-engine/SKILL.md) | 7 | marketing | Build-in-public, social |
| [opc-founder-os](opc-founder-os/SKILL.md) | 8 | leadership | Weekly planning, focus |

## Reference

- [SKILL-GRAPH.md](reference/SKILL-GRAPH.md) — domain trigger chains
- [parallel-review-protocol.md](reference/parallel-review-protocol.md) — non-blocking collaboration rules
- [skill.schema.json](reference/skill.schema.json) — skill metadata schema
- [examples/TICKET-EXAMPLE.md](examples/TICKET-EXAMPLE.md) — generic ticket walkthrough

## Presets

Optional product-line overlays. Not required for general use.

| Preset | Description |
|--------|-------------|
| [presets/jobseek/](presets/jobseek/) | JOBO / KATA / nagi product line (author's workspace) |

Usage: `@opc-os @presets/jobseek/PRESET.md <task>`

## Install (global)

Copies each `opc-*` skill folder to `~/.cursor/skills/`:

```bash
./install.sh
```

```powershell
.\install.ps1
```

Both scripts are safe to re-run (overwrites existing `opc-*` skills).

## Product Defaults

| Scenario | Default domains |
|----------|-----------------|
| New web app / SaaS | `opc-build-*` + `opc-ux-design` + `opc-growth-engine` |
| Content / social | `opc-content-engine` + `opc-growth-engine` |
| New product idea | Full chain via `opc-os` |

For project-specific brand tokens, add a preset under `presets/` or reference your own `BRAND.md` / `DESIGN-TOKENS.md`.

## Design Principles

- **Domains over departments** — engineering/marketing are tags, not org layers.
- **Advisory, not blocking** — only `CRITICAL` severity stops ship.
- **Solo execution** — default MVP scope ≤ 2 weeks.
- **Progressive disclosure** — sub-skills use `disable-model-invocation: true`; load via `@opc-os` or explicit `@`.

## License

[MIT](LICENSE) — Louis Li / Bubble Chicken Lab
