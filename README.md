# OPC Skill OS

**Languages:** English | [繁體中文](docs/README.zh-TW.md) | [简体中文](docs/README.zh-CN.md) | [日本語](docs/README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.2.0-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## Build Products Like a Team of 8 — Even If You're Solo

**OPC Skill OS** turns [Cursor](https://cursor.com) into your AI co-founder team — not another prompt collection.

**From idea → MVP → launch.** Type `@opc-os` + your goal. One prompt becomes a Ticket, routes to the right skills, and ships with a clear next action.

### Why not plain prompts?

| | Prompt library | Cursor Rules | MCP | **OPC Skill OS** |
|---|:---:|:---:|:---:|:---:|
| Reusable prompts | ✅ | ✅ | ❌ | ✅ |
| AI team roles | ❌ | ❌ | ❌ | ✅ |
| Workflow routing | ❌ | ❌ | ✅ | ✅ |
| Ticket + PLAN MODE | ❌ | ❌ | ❌ | ✅ |
| Parallel advisory | ❌ | ❌ | ❌ | ✅ |

## Quick Start

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh    # macOS / Linux
# .\install.ps1                                   # Windows
```

```
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## Your AI Team (14 skills · 3 groups)

Entry point: [`opc-os`](opc-os/SKILL.md) — orchestrator at repo root. Domain skills live under [`skills/`](skills/README.md).

### Leadership — strategy & focus

| Skill | Role |
|-------|------|
| [`opc-product-thinking`](skills/leadership/opc-product-thinking/SKILL.md) | MVP, pricing, validation |
| [`opc-founder-os`](skills/leadership/opc-founder-os/SKILL.md) | Weekly planning, focus |
| [`opc-analytics`](skills/leadership/opc-analytics/SKILL.md) | Metrics, funnels, AARRR |

### Engineering — build & ship

| Skill | Role |
|-------|------|
| [`opc-build-engine`](skills/engineering/opc-build-engine/SKILL.md) | Engineering bus |
| [`opc-build-frontend`](skills/engineering/opc-build-frontend/SKILL.md) | UI, components, a11y |
| [`opc-build-backend-api`](skills/engineering/opc-build-backend-api/SKILL.md) | API, DB, auth |
| [`opc-build-qa`](skills/engineering/opc-build-qa/SKILL.md) | Tests, acceptance |
| [`opc-build-security`](skills/engineering/opc-build-security/SKILL.md) | OWASP quick gate |
| [`opc-automation`](skills/engineering/opc-automation/SKILL.md) | Workflows, agents, cron |

### Marketing — grow & brand

| Skill | Role |
|-------|------|
| [`opc-growth-engine`](skills/marketing/opc-growth-engine/SKILL.md) | SEO, conversion, acquisition |
| [`opc-ux-design`](skills/marketing/opc-ux-design/SKILL.md) | UX flows, design system |
| [`opc-content-engine`](skills/marketing/opc-content-engine/SKILL.md) | Build-in-public, social |

## How It Works

Layered architecture — four stages from **prompt** to **shippable next action**:

![OPC Skill OS architecture](docs/assets/opc-architecture.png)

| Layer | What happens |
|-------|----------------|
| **① Input** | You type a goal in Cursor — one sentence is enough |
| **② Orchestration** | `opc-os` scopes the MVP, opens a Ticket, picks skills |
| **③ Domain Advisory** | Leadership / Engineering / Marketing review in **parallel** |
| **④ Output** | One merged decision — what ships now, what's deferred, **next action** |

[docs/architecture.md](docs/architecture.md) · [reference/SKILL-GRAPH.md](reference/SKILL-GRAPH.md)

## Live Demo (text)

**Input:** `@opc-os Build a job tracker for international students.`

**Output (abbreviated):** Ticket → parallel advisory (product / frontend / growth) → `next_action: Scaffold data model`

Full walkthrough: [examples/TICKET-EXAMPLE.md](examples/TICKET-EXAMPLE.md)

## Use Cases

| Audience | What OPC helps you do |
|----------|----------------------|
| **Indie hackers** | Scope MVPs, ship vertical slices |
| **Startup founders** | One prompt → product + growth plan |
| **Students** | Turn projects into shippable portfolios |
| **Agencies** | Repeatable Cursor delivery workflow |
| **PMs** | PRD-lite, cross-domain review without a team |

## Documentation

| Doc | Description |
|-----|-------------|
| [skills/README.md](skills/README.md) | Skill directory by group |
| [docs/architecture.md](docs/architecture.md) | System design |
| [docs/routing.md](docs/routing.md) | How skills get invoked |
| [docs/create-skill.md](docs/create-skill.md) | Author a new skill |
| [CONTRIBUTING.md](CONTRIBUTING.md) | PR guidelines |

## Compatibility

Cursor v0.40+ · macOS / Linux (`install.sh`) · Windows (`install.ps1`) — [details](docs/compatibility.md)

Install flattens `skills/*` and `opc-os` into `~/.cursor/skills/opc-*` for global `@` access.

## Design Principles

- **Domains over departments** — groups organize skills; routing stays cross-cutting
- **Advisory, not blocking** — only `CRITICAL` stops ship
- **Solo execution** — default MVP ≤ 2 weeks
- **Progressive disclosure** — sub-skills load via `@opc-os` or explicit `@`

## License

[MIT](LICENSE) — Louis Li / [Bubble Chicken Lab](https://github.com/louislibuilds)

---

Version v1.2.0
