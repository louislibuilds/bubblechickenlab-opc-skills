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

Triggers: UI, React, Next.js, component, landing page, CSS, responsive, a11y, font, typography, form, header, CTA.

**Out of scope:** API contract design (→ opc-build-backend-api), SEO strategy alone (→ opc-growth-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| UI spec or mock | Component breakdown |
| Design tokens (opc-ux-design) | Implementation advisory |
| Acceptance criteria | a11y / responsive checklist |

## Checklist

- [ ] Read existing components; extend don't rewrite
- [ ] Apply design tokens from opc-ux-design (colors, font stacks with Latin + CJK)
- [ ] `font-family` stacks include explicit CJK face when content has zh/ja/ko
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
| `--font-display` | `"Cormorant Garamond", "Noto Serif TC", serif` | Headlines |
| `--font-body` | `"DM Sans", "Noto Sans TC", sans-serif` | Body, UI |
| `--font-mono` | `"JetBrains Mono", "Noto Sans Mono CJK TC", monospace` | Code |

Header: sticky, 64px, backdrop blur, thin border. Primary CTA: teal fill, ~10px radius, no heavy shadow.

## Font Implementation

Latin-only `font-family` values break on CJK content — always pair. Full guide: [typography.md](../../../reference/typography.md).

### CSS variables

```css
:root {
  --font-display: "Plus Jakarta Sans", "Noto Sans TC", sans-serif;
  --font-body: "Plus Jakarta Sans", "Noto Sans TC", sans-serif;
  --font-mono: "JetBrains Mono", "Noto Sans Mono CJK TC", monospace;
}

body { font-family: var(--font-body); }
h1, h2, h3 { font-family: var(--font-display); }
code, pre { font-family: var(--font-mono); }
```

### Next.js (`next/font/google`)

Load Latin + CJK separately; apply both in stack:

```tsx
import { Plus_Jakarta_Sans } from "next/font/google";
import { Noto_Sans_TC } from "next/font/google";

const latin = Plus_Jakarta_Sans({ subsets: ["latin"], variable: "--font-latin" });
const cjk = Noto_Sans_TC({ subsets: ["latin"], weight: ["400", "500", "700"], variable: "--font-cjk" });

// layout: className={`${latin.variable} ${cjk.variable}`}
// CSS: font-family: var(--font-latin), var(--font-cjk), sans-serif;
```

### Checklist (fonts)

- [ ] Stack order: Latin → CJK → generic fallback
- [ ] Load only needed locale subset (TC / SC / JP / KR)
- [ ] Verify on Windows (微軟正黑體 fallback) and macOS (PingFang fallback) if stack is wrong
- [ ] No `letter-spacing` on CJK headings
- [ ] `font-display: swap` or next/font default to avoid FOIT

## Advisory Format

```markdown
### opc-build-frontend
- [SUGGESTION] Body uses `font-family: Inter` only — add Noto Sans TC for zh-TW content
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
