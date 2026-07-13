# Ticket Example — SaaS Landing SEO Meta

Generic validation scenario. Simulates `@opc-os` output for:

> My SaaS landing page needs SEO meta tags and Open Graph. Ship this week.

---

## Ticket

- id: T-20260713-001
- type: marketing
- goal: Add SEO meta and Open Graph tags to landing page for shareability and search snippets
- domains_invoked: [opc-growth-engine, opc-build-frontend, opc-ux-design, opc-build-qa]
- mvp_scope: 1 day solo — `index.html` or framework metadata only; no blog/CMS
- blockers: none

## Parallel Advisory (max 3 bullets/domain)

### opc-growth-engine

- [SUGGESTION] Title pattern: `ProductName — one-line value` (≤60 chars)
- [SUGGESTION] Add `og:image` 1200×630 with brand mark; absolute URL on production domain
- [SUGGESTION] Add `link rel="canonical"` to production URL

### opc-build-frontend

- [SUGGESTION] Use framework metadata API (`export const metadata` in Next App Router) if applicable; else `<head>` in `index.html`
- [SUGGESTION] Include `twitter:card` summary_large_image alongside Open Graph
- [NIT] Preconnect to font CDN if not already present

### opc-ux-design

- [SUGGESTION] OG image should match brand tokens from project design system
- [SUGGESTION] Primary CTA copy aligns with value prop in meta description
- [NIT] Add `og:locale:alternate` if multi-lang pages ship

### opc-build-qa

- [SUGGESTION] Smoke: view-source shows title, description, og:title, og:image
- [SUGGESTION] Validate with https://developers.facebook.com/tools/debug/ after deploy
- [NIT] No unit tests required for static meta-only change

## Decision (orchestrator)

- ship_path: Implement metadata in landing entry → deploy → run FB debugger
- deferred: sitemap.xml, structured data JSON-LD, analytics event for share clicks
- next_action: Open landing `layout.tsx` or `index.html` and add metadata block per opc-growth-engine checklist

---

## Expected PLAN MODE Sections (abbreviated)

### 1. PLAN MODE SUMMARY

Product: SaaS web app. Type: Web app (marketing surface). Constraint: ship this week, solo.

### 2. REQUIRED SKILLS LIST

opc-growth-engine (SEO), opc-build-frontend (implementation), opc-ux-design (brand), opc-build-qa (smoke).

### 3. SYSTEM ARCHITECTURE

Static/SSR head tags only. No backend. No new dependencies.

### 4. MVP SCOPE

In: title, description, OG, Twitter card, canonical. Out: sitemap, JSON-LD, OG image generator automation.

### 5. EXECUTION STEPS

1. Read current landing head/metadata
2. Add fields per growth checklist
3. Create or link OG image asset
4. Deploy preview → validate → production

### 6. SKILL LIBRARY UPDATE

Reused: opc-growth-engine, opc-build-frontend, opc-ux-design, opc-build-qa. Added: none.

### 7. NEXT ACTION

Edit landing metadata file — single PR.

---

## Validation Checklist

- [x] Ticket format with id, type, domains, blockers
- [x] Parallel advisory ≤3 bullets per domain
- [x] No domain debate loop — single Decision
- [x] Only SUGGESTION/NIT — no false CRITICAL blockers
- [x] next_action is concrete and immediate
