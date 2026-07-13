# OPC Typography — Latin + CJK

Human-readable companion for bilingual (en + zh/ja/ko) product shells. Referenced by `opc-ux-design` and `opc-build-frontend`.

## Core Rule

**Latin-only fonts are not enough for CJK content.**

Fonts like Inter, Sora, Poppins, DM Sans, Space Grotesk have **no full CJK glyph sets**. The browser falls back to system fonts:

| OS | Typical CJK fallback |
|----|----------------------|
| macOS | PingFang TC / SC |
| Windows | Microsoft JhengHei / YaHei |
| Android | Noto Sans CJK |

Result: English renders in your chosen Latin face; Chinese renders in a different weight, width, and x-height — the UI looks mismatched.

## Font Categories

### Latin (Western)

Designed for English, French, German, Spanish, etc.

Examples: Inter, Helvetica, SF Pro, Sora, Poppins, Manrope, Plus Jakarta Sans, Space Grotesk, Cormorant Garamond, Playfair Display, DM Sans

### CJK (East Asian)

Designed for Chinese, Japanese, Korean.

Examples: Noto Sans TC / SC / JP / KR, Noto Serif TC, PingFang TC, Microsoft JhengHei, GenSenRounded

## Stack Pattern

Always pair Latin + CJK explicitly:

```css
/* Sans — UI / body */
font-family: "Plus Jakarta Sans", "Noto Sans TC", sans-serif;

/* Serif — editorial / 文青 */
font-family: "Cormorant Garamond", "Noto Serif TC", serif;

/* Mono — code */
font-family: "JetBrains Mono", "Noto Sans Mono CJK TC", monospace;
```

Order: **Latin first, CJK second, generic last.**

## Recommended Pairings

| Vibe | Heading (Latin) | Body (CJK) | Notes |
|------|-----------------|------------|-------|
| Google / clean | Inter | Noto Sans TC | Material-like, safe default |
| Taiwan startup | Plus Jakarta Sans | Noto Sans TC | Most common TW indie stack |
| AI product | Sora | Noto Sans TC | Modern, slightly futuristic |
| Developer tool | Space Grotesk | Noto Sans TC | Indie hacker / lab feel |
| E-commerce | Poppins | Noto Sans TC | Friendly, rounded |
| 文青 / editorial | Playfair Display | Noto Serif TC | Blog, brand storytelling |
| 日系文青 | Cormorant Garamond | Noto Serif TC | Resume, craft, depth |
| Apple-like | SF Pro Display* | PingFang TC | *Use system stack on Apple; web → Inter + Noto Sans TC |
| BubbleChickenLab | Space Grotesk | Noto Sans TC | + JetBrains Mono for code |

## By Product Type

| Product type | Stack |
|--------------|-------|
| Business SaaS | Plus Jakarta Sans + Noto Sans TC |
| AI product | Sora + Noto Sans TC |
| Portfolio | Space Grotesk + Noto Sans TC |
| 文青 / blog | Playfair Display + Noto Serif TC |
| Developer tool | Space Grotesk + Noto Sans TC + JetBrains Mono |

## Typography System (define in DESIGN-TOKENS.md)

When shipping a bilingual shell, document all of:

| Token | Example |
|-------|---------|
| `--font-display` | `"Cormorant Garamond", "Noto Serif TC", serif` |
| `--font-body` | `"DM Sans", "Noto Sans TC", sans-serif` |
| `--font-ui` | same as body or slightly tighter stack |
| `--font-mono` | `"JetBrains Mono", "Noto Sans Mono CJK TC", monospace` |
| Weights | 400 body, 500 UI labels, 600 subheads, 700 headings |
| Line height | 1.5–1.7 body, 1.2–1.3 headings |
| Heading scale | e.g. 2.5rem / 2rem / 1.5rem / 1.25rem / 1rem |
| Letter-spacing | uppercase labels: 0.12–0.2em (Latin only; avoid on CJK) |

## Locale Notes

| Locale | CJK face | Serif variant |
|--------|----------|---------------|
| zh-TW | Noto Sans TC | Noto Serif TC |
| zh-CN | Noto Sans SC | Noto Serif SC |
| ja | Noto Sans JP | Noto Serif JP |
| ko | Noto Sans KR | Noto Serif KR |

Use the locale that matches primary audience. For multi-locale sites, load only needed subsets.

## Anti-Patterns

| Bad | Why |
|-----|-----|
| `font-family: Inter` only on zh-TW site | CJK falls back to system font — mismatch |
| Same weight number across Latin + CJK without visual check | 600 in Inter ≠ 600 in Noto Sans TC |
| `letter-spacing` on Chinese headings | Breaks CJK rhythm |
| Loading full CJK font without subset | Large payload; use `unicode-range` or next/font subset |
| Mixing serif Latin + sans CJK without intent | Playfair + Noto Sans TC can work; verify visually |

## Quick Audit Checklist

- [ ] Every `font-family` stack includes explicit CJK face when content has zh/ja/ko
- [ ] Heading and body each have paired Latin + CJK
- [ ] Weights documented (400/500/600/700)
- [ ] Heading scale + line heights in tokens
- [ ] Visual check on macOS **and** Windows (fallback differs)
- [ ] Mono stack for code blocks if dev product
