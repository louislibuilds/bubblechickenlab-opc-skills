# OPC Skill Library Changelog

Track new and reused skills per product initiative.

## Format

```
### YYYY-MM-DD — {initiative}
- Reused: opc-build-frontend, opc-growth-engine
- Added: (none)
- Notes: ...
```

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
