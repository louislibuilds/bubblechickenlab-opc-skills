# OPC Skill Library Changelog

Track new and reused skills per product initiative.

## Format

```
### YYYY-MM-DD — {initiative}
- Reused: opc-build-frontend, opc-growth-engine
- Added: (none)
- Notes: ...
```

## 2026-07-13 — v1.2.0 skills directory restructure

- **Moved:** 13 domain skills into `skills/{leadership,engineering,marketing}/`
- **Kept:** `opc-os/` at repo root (orchestrator entry)
- **Updated:** README 3-group layout, install.sh/ps1 recursive flatten, skills/README.md
- **Notes:** `@opc-*` names unchanged; install still flattens to `~/.cursor/skills/`

## 2026-07-13 — v1.1.3 architecture diagram as image

- **Added:** `docs/assets/opc-architecture.png` — generated AWS-style layered diagram
- **Replaced:** mermaid block with static image in all 4 README locales
- **Notes:** Image renders consistently everywhere (no mermaid parser dependency)

## 2026-07-13 — v1.1.2 AWS-style architecture diagram

- **Updated:** README How It Works — 4-layer subgraph diagram with AWS-inspired colors
- **Added:** Layer summary table below diagram (all 4 README locales)
- **Notes:** Leadership / Engineering / Marketing skill groups; avoids @ in mermaid nodes

## 2026-07-13 — v1.1.1 fix mermaid render

- **Fixed:** README mermaid diagram — quote node labels (`@`, `+`) and split `&` fan-in
- **Updated:** all four README variants (en, zh-TW, zh-CN, ja)
- **Notes:** Repo name stays `bubblechickenlab-opc-skills` (studio brand); `OPC Skill OS` is the product/wake name

## 2026-07-13 — v1.1.0 open-source readiness

- **Added:** README hero, mermaid diagrams, demo, use cases, comparison table
- **Added:** CONTRIBUTING.md, docs/architecture|routing|create-skill|compatibility.md
- **Updated:** opc-analytics (AARRR, KPI review), SKILL-GRAPH mermaid
- **Notes:** GIF demo and new skills (devops/finance/hiring) deferred to Phase 3

## 2026-07-13 — v1.0.3 remove public presets

- **Removed:** `presets/jobseek/` and `examples/TICKET-EXAMPLE-jobseek.md` from repo (gitignored locally)
- **Updated:** README, opc-os, skills — local preset guidance only
- **Notes:** Font pairings remain in `reference/typography.md`; product-specific rules stay local

## 2026-07-13 — v1.0.2 Latin + CJK typography

- **Added:** `reference/typography.md` — font pairing guide for bilingual shells
- **Updated:** opc-ux-design, opc-build-frontend, presets/jobseek, README reference
- **Notes:** Latin-only stacks must pair with explicit CJK faces

## 2026-07-13 — v1.0.1 i18n README

- **Added:** Phase 1 README translations (zh-TW, zh-CN, ja)
- **Reused:** All 14 core skills (English)
- **Notes:** English README remains source of truth; sync translations on major changes only

## 2026-07-13 — v1.0.0 public release

- **Added:** JobSeek preset extracted to `presets/jobseek/`
- **Reused:** All 14 core skills
- **Notes:** Core skills decoupled from JobSeek workspace; generic ticket example added

## 2026-07-03 — OPC Skill OS bootstrap

- **Added:** Full 14-skill library (opc-os + 8 domains + 4 build sub-skills)
- **Reused:** N/A (initial registry)
- **Notes:** Reference implementation validated on solo product line

## Reuse Guidelines

Before creating a new skill:

1. Check [skill.schema.json](reference/skill.schema.json) for existing triggers
2. Extend an existing skill's checklist if overlap > 50%
3. Log reuse here when opc-os reports SKILL LIBRARY UPDATE
