# JobSeek Product Preset

Optional overlay for the JobSeek product line (JOBO, KATA, nagi). Use when working in that workspace or when the user references these products.

## How to Apply

In Cursor, include this file alongside `@opc-os` when JobSeek context matters:

```
@opc-os @presets/jobseek/PRESET.md KATA landing needs SEO meta tags. Ship this week.
```

Or copy `presets/jobseek/` into your project and reference locally.

## Products

| Product | Positioning | Default skills |
|---------|-------------|----------------|
| **JOBO** | Job application tracker — local + cloud | opc-build-* + opc-ux-design |
| **KATA** | Shape your future — resume builder (型 / カタ) | opc-build-* + opc-ux-design + opc-growth-engine |
| **nagi** | Personal hub — 凪 · depth over noise | opc-ux-design + opc-content-engine |

## Brand Reference

Read when advising on JOBO / KATA / nagi:

- `05-doc/BRAND.md` — naming decisions
- `05-doc/DESIGN-TOKENS.md` — cross-product tokens
- `06-post/` — existing posts for tone consistency

### Locked Names

| Product | Rule |
|---------|------|
| **JOBO** | Keep name — do not rebrand |
| **KATA** | Resume editor; Latin **KATA**, zh **型**, ja **カタ** |
| **nagi** | Personal / hub brand — 凪 |
| **KIRO** | Deprecated — never use |
| **RESUmade** | Deprecated — use KATA in new copy |

KATA tagline: en *Shape your future.* · zh *打造你的專業樣貌* · ja *型を整える*

## Content Hooks

| Product | Angle |
|---------|-------|
| JOBO | Tracking applications without spreadsheet chaos |
| KATA | Shaping your professional form — 型 |
| nagi | Building in public, depth over noise |

## Design Tokens (product shell)

Align landing / nav / forms — **not** resume PDF output or tracker data tables.

| Token | Value |
|-------|-------|
| `--color-depth-bg` | `#f5f3ef` |
| `--color-text` | `#2a2a28` |
| `--color-accent-teal` | `#2d5a62` (primary CTA) |
| `--color-accent-gold` | `#c9a962` (links, labels) |
| `--font-display` | `"Cormorant Garamond", "Noto Serif TC", serif` |
| `--font-body` / `--font-ui` | `"DM Sans", "Noto Sans TC", sans-serif` |

### Typography (日系文青)

JobSeek line targets zh-TW / ja audiences. Stacks use **paired Latin + CJK** — see [typography.md](../../reference/typography.md).

| Role | Stack | Vibe |
|------|-------|------|
| Display (KATA, nagi) | Cormorant Garamond + Noto Serif TC | 日系文青 — craft, depth |
| Body / UI | DM Sans + Noto Sans TC | Clean readable UI |

Weights: 400 body, 500 labels, 600 subheads, 700 headings. Line height: 1.6 body, 1.25 headings.

Do **not** use Latin-only fonts (Inter, Sora alone) without explicit CJK pairing.

## Stack Defaults

| Product | Stack |
|---------|-------|
| JOBO, KATA | React / Next.js |
| nagi | Vite |

## Product-Specific Rules

- Optimize for adoption first unless user states monetization goal
- Reuse existing products (JOBO/KATA/nagi) before greenfield repo
- Respect existing JSON export formats; don't break `.kata.json` / jobo schema without migration plan
- RESUmade → KATA migration: respect `resumade-draft` localStorage key
- Unify product shell across products; don't force resume PDF styling to match nagi
- CRITICAL on major brand conflict (wrong product name, deprecated KIRO)

## Analytics Events (KATA example)

| Event | Use |
|-------|-----|
| `resume_export` | core_value_action for resume builder |
| `editor_open` | signup_or_first_action |
