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

Triggers: UX, onboarding, design system, brand, visual, layout, tokens, CTA, header, landing design, i18n display names.

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
| `--font-display` | Cormorant Garamond, Noto Serif TC |
| `--font-body` / `--font-ui` | DM Sans, Noto Sans TC |

### Components

- Header: sticky, 64px, backdrop blur, thin border
- Primary CTA: teal background, ~10px radius, no heavy shadow
- Secondary CTA: outline, transparent fill
- Cards: subtle border, no large drop shadows
- Labels: 11px, uppercase, letter-spacing 0.12–0.2em, gold or muted

## Onboarding UX (solo products)

1. Show value in first screen (no signup wall if avoidable)
2. Progressive disclosure — advanced features later
3. Empty states with one action
4. Success state confirms what happened next

## Checklist

- [ ] Consistent with project design tokens for product shell
- [ ] One primary action per view
- [ ] i18n: product names correct per locale when applicable
- [ ] Dark mode tokens if product supports night theme
- [ ] CRITICAL only for major brand conflict (wrong product name, deprecated branding)

## Advisory Format

```markdown
### opc-ux-design
- [SUGGESTION] Landing still on dark theme — migrate to day tokens per DESIGN-TOKENS
- [CRITICAL] Marketing page uses deprecated product name — violates BRAND.md
```

## Cross-References

- Implementation → opc-build-frontend
- Conversion copy → opc-growth-engine

## OPC Constraints

- Unify shell across related products; don't force internal tool UIs to identical layouts
- Respect existing localStorage keys during rebrand migrations
- Prefer token CSS variables over one-off hex
