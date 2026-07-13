---
name: opc-growth-engine
description: >-
  Growth and acquisition advisory for OPC solo products. SEO, landing conversion,
  referral loops, pricing pages, and distribution strategy. Use when improving
  visibility, signups, or revenue. Marketing domain.
disable-model-invocation: true
---

# OPC Growth Engine

## When to Activate

Triggers: SEO, growth, conversion, acquisition, referral, landing page, pricing, funnel, signup, CTA copy, meta tags, sitemap, Product Hunt.

**Out of scope:** detailed UI polish (→ opc-ux-design), long-form content drafts (→ opc-content-engine).

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Product positioning | SEO checklist |
| Landing URL / page structure | Conversion advisory |
| Target persona | Growth loop sketch |

## Checklist

- [ ] Clear value prop above fold (who, problem, outcome)
- [ ] Single primary CTA per screen
- [ ] Title + meta description unique per page (≤60 / ≤155 chars target)
- [ ] Open Graph + Twitter card tags for shareability
- [ ] `robots.txt` + sitemap for public marketing pages
- [ ] Measurable goal (signup, waitlist, export) tied to one event
- [ ] Referral or content loop identified (even if v2)

## SEO Quick Wins (solo MVP)

```html
<!-- Minimum viable head -->
<title>Product — one-line value</title>
<meta name="description" content="..." />
<meta property="og:title" content="..." />
<meta property="og:description" content="..." />
<meta property="og:image" content="absolute-url-to-1200x630.png" />
<link rel="canonical" href="https://..." />
```

## Product Positioning

Derive positioning from the Ticket goal and user context. If a preset exists (e.g. `presets/jobseek/PRESET.md`), use its product table and taglines.

## Advisory Format

```markdown
### opc-growth-engine
- [SUGGESTION] Add canonical URL to production domain
- [SUGGESTION] Primary CTA aligns with value prop in meta description
```

## Cross-References

- Visual/CTA styling → opc-ux-design
- Social distribution → opc-content-engine
- Event tracking → opc-analytics

## OPC Constraints

- Growth work ships with the feature, not "later marketing sprint"
- No paid ads playbook required for MVP
- Prefer organic: SEO + build-in-public + one community channel
- Pricing page only when payment exists
