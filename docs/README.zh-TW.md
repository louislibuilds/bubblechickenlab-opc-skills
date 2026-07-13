# OPC Skill OS

**語言：** [English](../README.md) | 繁體中文 | [简体中文](README.zh-CN.md) | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.2.1-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

**把 Cursor 變成你的新創團隊。** 你不是在堆 prompt — 你是在用 AI 部門一起規劃、審查、出貨。

[Bubble Chicken Lab](https://github.com/louislibuilds) 的 **OPC Skill OS** 是給一人公司用的 [Cursor](https://cursor.com) 框架。一句話進去 → 收斂好的 Ticket → Product / Engineering / Marketing 平行建議 → 今天就能做的 **next action**。沒有兩千字廢話，不用猜下一步。

**為什麼值得安裝：**

- **AI 員工，不是 prompt 合集** — 14 個角色 skill（PM、前後端、QA、資安、成長、內容、創辦人教練…）
- **Ticket 優先** — 寫 code 前先定範圍、領域、出貨路徑
- **平行顧問** — 多部門同時審查；只有 `CRITICAL` 會擋你
- **預設 MVP** — 為 solo founder 設計（≤ 2 週），不是企業級空轉
- **裝一次到處用** — `./install.sh` 後任何專案 `@opc-os`

## 一人當八人團隊用 — 即使你是 Solo Founder

**從點子 → MVP → 上線。** 輸入 `@opc-os` + 你的目標。

## 快速開始

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh
```

```
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## 你的 AI 團隊（14 skills · 3 組）

入口：[`opc-os`](../opc-os/SKILL.md) · 目錄：[`skills/`](../skills/README.md)

### Leadership — 策略與專注

| Skill | 角色 |
|-------|------|
| `opc-product-thinking` | MVP、定價、驗證 |
| `opc-founder-os` | 週計畫、專注 |
| `opc-analytics` | 指標、漏斗、AARRR |

### Engineering — 建置與出貨

| Skill | 角色 |
|-------|------|
| `opc-build-engine` | 工程總線 |
| `opc-build-frontend` | UI、無障礙 |
| `opc-build-backend-api` | API、資料庫 |
| `opc-build-qa` | 測試、驗收 |
| `opc-build-security` | 資安閘門 |
| `opc-automation` | 自動化、CI |

### Marketing — 成長與品牌

| Skill | 角色 |
|-------|------|
| `opc-growth-engine` | SEO、轉換 |
| `opc-ux-design` | UX、設計系統 |
| `opc-content-engine` | 內容、社群 |

## 運作方式

![OPC Skill OS 架構](assets/opc-architecture.png)

| 層級 | 做什麼 |
|------|--------|
| **① Input** | 在 Cursor 輸入目標 |
| **② Orchestration** | `opc-os` 定義 MVP、建立 Ticket |
| **③ Domain Advisory** | Leadership / Engineering / Marketing 平行審查 |
| **④ Output** | 合併決策與 **next action** |

[docs/architecture.md](architecture.md) · [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## 授權

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.2.1
