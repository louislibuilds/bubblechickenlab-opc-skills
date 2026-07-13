---
name: opc-content-engine
description: >-
  Content and personal brand advisory for OPC solo founders. Build-in-public,
  LinkedIn/X posts, blog repurpose, and distribution plans. Use when drafting
  social content or launch announcements. Marketing domain.
disable-model-invocation: true
---

# OPC Content Engine

## When to Activate

Triggers: LinkedIn, Twitter, X, blog, post, build-in-public, announcement, launch thread, newsletter, 貼文.

**Out of scope:** SEO technical setup (→ opc-growth-engine), UI layout (→ opc-ux-design).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Product update or ship note | Post draft (1 platform) |
| Brand voice | Distribution plan (light) |
| Ticket goal | Content angle |

## Voice Guidelines

- Bilingual OK: English + Traditional Chinese (Taiwan) as user prefers
- Technical blog tone: precise, not hype-heavy
- Build-in-public: show problem → approach → outcome → lesson
- Avoid AI-slop patterns: inflated vocabulary, rule-of-three filler, fake enthusiasm
- Author voice: experienced engineer co-founder, cautious and caring

## Content Types

| Type | Structure |
|------|-----------|
| Ship note | What shipped · why · screenshot/link · next |
| Learning post | Problem · what tried · what worked |
| Launch | Hook · value · CTA · link |
| Thread | 1 hook tweet + 3–5 bullets max |

## Repurpose Chain

```
Blog (long) → LinkedIn post (medium) → X hook (short)
```

One piece of work → max 2 derivatives per session (don't backlog content factory).

## Product Hooks

Derive angles from the Ticket goal and product positioning. If a preset exists (e.g. `presets/jobseek/PRESET.md`), use its content hooks and brand rules.

## Checklist

- [ ] One clear CTA or link
- [ ] Correct product names per project brand guidelines
- [ ] Screenshot or demo if claiming UI ship
- [ ] Hashtags sparingly (0–3)
- [ ] Schedule: ship content within 48h of feature ship when launch-related

## Advisory Format

```markdown
### opc-content-engine
- [SUGGESTION] Lead with "shipped SEO meta" not generic AI resume pitch
- [SUGGESTION] Cross-post to LinkedIn with zh-TW summary paragraph
```

## Cross-References

- Positioning → opc-growth-engine
- Brand names → opc-ux-design / project BRAND.md

## OPC Constraints

- Content serves the Ticket — don't start a parallel content project
- Draft in user's language mix; don't auto-translate without ask
- Max one draft per advisory pass (iterate on request)
