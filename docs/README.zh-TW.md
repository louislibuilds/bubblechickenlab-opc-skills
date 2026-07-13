# OPC Skill OS

**語言：** [English](../README.md) | 繁體中文 | [简体中文](README.zh-CN.md) | [日本語](README.ja.md)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

一人公司（One-Person Company）的 [Cursor](https://cursor.com) AI 作業系統。

將每個提示轉成 **Ticket**，路由至 **8 個 Skill 領域**，以**平行顧問**方式審查且不阻擋執行，以 MVP 優先出貨。

## 快速開始

```bash
# 1. 全域安裝
./install.sh          # macOS / Linux
.\install.ps1         # Windows
```

```
# 2. 在 Cursor 開啟任一專案，然後：
@opc-os My SaaS landing page needs SEO meta tags. Ship this week.
```

就這樣——`@opc-os` 會執行 PLAN MODE、路由各領域，並輸出你的下一步。

## 目錄對照

| Skill | Domain | Dept tag | 角色 |
|-------|--------|----------|------|
| [opc-os](../opc-os/SKILL.md) | meta | leadership | 編排器、PLAN MODE、Ticket 路由 |
| [opc-product-thinking](../opc-product-thinking/SKILL.md) | 1 | leadership | MVP、定價、驗證 |
| [opc-build-engine](../opc-build-engine/SKILL.md) | 2 | engineering | 工程總線 |
| [opc-build-frontend](../opc-build-frontend/SKILL.md) | 2 | engineering | UI、元件、無障礙 |
| [opc-build-backend-api](../opc-build-backend-api/SKILL.md) | 2 | engineering | API、資料庫、驗證 |
| [opc-build-qa](../opc-build-qa/SKILL.md) | 2 | engineering | 測試、驗收 |
| [opc-build-security](../opc-build-security/SKILL.md) | 2 | engineering | OWASP 快速閘門 |
| [opc-growth-engine](../opc-growth-engine/SKILL.md) | 3 | marketing | SEO、轉換、獲客 |
| [opc-ux-design](../opc-ux-design/SKILL.md) | 4 | marketing | UX 流程、設計系統 |
| [opc-analytics](../opc-analytics/SKILL.md) | 5 | leadership | 事件、漏斗、A/B |
| [opc-automation](../opc-automation/SKILL.md) | 6 | engineering | 工作流、代理、cron |
| [opc-content-engine](../opc-content-engine/SKILL.md) | 7 | marketing | Build-in-public、社群 |
| [opc-founder-os](../opc-founder-os/SKILL.md) | 8 | leadership | 週計畫、專注 |

## 參考文件

- [SKILL-GRAPH.md](../reference/SKILL-GRAPH.md) — 領域觸發鏈
- [parallel-review-protocol.md](../reference/parallel-review-protocol.md) — 非阻擋式協作規則
- [skill.schema.json](../reference/skill.schema.json) — skill 中繼資料 schema
- [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md) — 通用 Ticket 範例

## Presets

可選的產品線覆蓋層，一般使用不必載入。

| Preset | 說明 |
|--------|------|
| [presets/jobseek/](../presets/jobseek/) | JOBO / KATA / nagi 產品線（作者工作區） |

用法：`@opc-os @presets/jobseek/PRESET.md <task>`

## 安裝（全域）

將每個 `opc-*` skill 資料夾複製到 `~/.cursor/skills/`：

```bash
./install.sh
```

```powershell
.\install.ps1
```

兩支腳本皆可重複執行（會覆寫既有 `opc-*` skills）。

## 產品預設

| 情境 | 預設領域 |
|------|----------|
| 新 Web app / SaaS | `opc-build-*` + `opc-ux-design` + `opc-growth-engine` |
| 內容 / 社群 | `opc-content-engine` + `opc-growth-engine` |
| 新產品點子 | 透過 `opc-os` 走完整鏈 |

專案專屬品牌 token 可放在 `presets/`，或引用你自己的 `BRAND.md` / `DESIGN-TOKENS.md`。

## 設計原則

- **領域優於部門** — engineering / marketing 是標籤，不是組織層級。
- **顧問而非阻擋** — 只有 `CRITICAL` 嚴重度會擋下出貨。
- **一人執行** — 預設 MVP 範圍 ≤ 2 週。
- **漸進揭露** — 子 skill 使用 `disable-model-invocation: true`；透過 `@opc-os` 或明確 `@` 載入。

## 授權

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.0.1
