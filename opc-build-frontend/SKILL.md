---
name: opc-build-frontend
description: >-
  Frontend implementation advisory for OPC solo products. Covers React/Next UI,
  components, responsive layout, WCAG 2.1 AA, and design token alignment. Use
  when building or modifying user-facing interfaces. Sub-skill of opc-build-engine.
disable-model-invocation: true
---

# OPC Build — Frontend

## When to Activate

Triggers: UI, React, Next.js, component, landing page, CSS, responsive, a11y, form, header, CTA.

**Out of scope:** API contract design (→ opc-build-backend-api), SEO strategy alone (→ opc-growth-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| UI spec or mock | Component breakdown |
| Design tokens (opc-ux-design) | Implementation advisory |
| Acceptance criteria | a11y / responsive checklist |

## Checklist

- [ ] Read existing components; extend don't rewrite
- [ ] Apply design tokens from opc-ux-design (teal CTA, depth-bg, display/body fonts)
- [ ] Mobile-first responsive layout
- [ ] Keyboard navigation and focus states
- [ ] Semantic HTML (headings, labels, buttons)
- [ ] No inline styles that fight CSS variables
- [ ] Lazy-load heavy assets on landing pages

## Design Token Defaults

When project `DESIGN-TOKENS.md` or opc-ux-design tokens apply:

| Token | Day value | Use |
|-------|-----------|-----|
| `--color-depth-bg` | `#f5f3ef` | Page background |
| `--color-accent-teal` | `#2d5a62` | Primary CTA |
| `--color-accent-gold` | `#c9a962` | Links, labels |
| `--font-display` | Cormorant Garamond, Noto Serif TC | Headlines |
| `--font-body` | DM Sans, Noto Sans TC | Body, UI |

Header: sticky, 64px, backdrop blur, thin border. Primary CTA: teal fill, ~10px radius, no heavy shadow.

## Advisory Format

```markdown
### opc-build-frontend
- [SUGGESTION] Extract shared Button from duplicated landing CTAs
- [CRITICAL] Form submit missing label association (a11y)
```

## Cross-References

- Visual consistency → opc-ux-design
- Meta/OG tags in same page → opc-growth-engine
- Auth UI flows → opc-build-backend-api + opc-build-security

## OPC Constraints

- Prefer CSS variables over hardcoded hex when aligning products
- Ship one screen at a time
- Avoid new UI libraries unless repo already uses them
- Unify product shell only; don't force unrelated views to identical styling
