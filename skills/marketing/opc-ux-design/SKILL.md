---
name: opc-ux-design
description: >-
  UX and design system advisory for OPC solo products. Onboarding flows, brand
  visual consistency, design tokens, and conversion-oriented layout. Use for brand,
  UI flows, or aligning product shells. Marketing domain.
disable-model-invocation: true
---

# OPC UX & Design

## When to Activate

Triggers: UX, onboarding, design system, brand, visual, layout, tokens, typography, fonts, CTA, header, landing design, i18n display names.

**Out of scope:** backend logic (→ opc-build-backend-api), SEO meta only (→ opc-growth-engine).

## Brand Reference

Read project brand docs when present:

- `BRAND.md` — naming decisions
- `DESIGN-TOKENS.md` — cross-product tokens
- `presets/*/PRESET.md` — optional product-line overlays

If no brand docs exist, ask user for primary colors, fonts, and CTA style before advising.

## Design Token Defaults (OPC starter)

Use when project has no tokens yet. Override with project `DESIGN-TOKENS.md` when available.

| Token | Value |
|-------|-------|
| `--color-depth-bg` | `#f5f3ef` |
| `--color-text` | `#2a2a28` |
| `--color-accent-teal` | `#2d5a62` (primary CTA) |
| `--color-accent-gold` | `#c9a962` (links, labels) |
| `--font-display` | `"Cormorant Garamond", "Noto Serif TC", serif` |
| `--font-body` / `--font-ui` | `"DM Sans", "Noto Sans TC", sans-serif` |
| `--font-mono` | `"JetBrains Mono", "Noto Sans Mono CJK TC", monospace` |

**Typography rule:** Latin-only fonts (Inter, Sora, DM Sans, etc.) have no CJK glyphs. Always pair Latin + CJK in the same stack — see [typography.md](../../../reference/typography.md).

### Components

- Header: sticky, 64px, backdrop blur, thin border
- Primary CTA: teal background, ~10px radius, no heavy shadow
- Secondary CTA: outline, transparent fill
- Cards: subtle border, no large drop shadows
- Labels: 11px, uppercase, letter-spacing 0.12–0.2em, gold or muted (Latin labels only — avoid letter-spacing on CJK)

## Typography (Latin + CJK)

When content includes zh-TW, zh-CN, ja, or ko:

1. **Never specify Latin-only** — browser fallback to PingFang / 微軟正黑體 / Noto Sans CJK causes weight and width mismatch.
2. **Pair explicitly:** `"Plus Jakarta Sans", "Noto Sans TC", sans-serif` (startup) or `"Cormorant Garamond", "Noto Serif TC", serif` (文青).
3. **Define a full font system** in `DESIGN-TOKENS.md`: display, body, ui, mono, weights (400/500/600/700), heading scale, line heights.
4. **Match product type** — SaaS → Plus Jakarta + Noto Sans TC; AI → Sora + Noto Sans TC; dev tool → Space Grotesk + Noto Sans TC + JetBrains Mono.

Full pairings and audit checklist: [typography.md](../../../reference/typography.md).

## Onboarding UX (solo products)

1. Show value in first screen (no signup wall if avoidable)
2. Progressive disclosure — advanced features later
3. Empty states with one action
4. Success state confirms what happened next

## Checklist

- [ ] Consistent with project design tokens for product shell
- [ ] One primary action per view
- [ ] Font stacks pair Latin + CJK when site has zh/ja/ko content
- [ ] Weights and heading scale documented (not ad-hoc per page)
- [ ] i18n: product names correct per locale when applicable
- [ ] Dark mode tokens if product supports night theme
- [ ] CRITICAL only for major brand conflict (wrong product name, deprecated branding)

## Advisory Format

```markdown
### opc-ux-design
- [SUGGESTION] Landing uses Inter only — add "Noto Sans TC" to body stack for zh-TW parity
- [CRITICAL] Marketing page uses deprecated product name — violates BRAND.md
```

## Cross-References

- Implementation → opc-build-frontend
- Conversion copy → opc-growth-engine

## OPC Constraints

- Unify shell across related products; don't force internal tool UIs to identical layouts
- Respect existing localStorage keys during rebrand migrations
- Prefer token CSS variables over one-off hex
- Typography details → [typography.md](../../../reference/typography.md)
