# OPC Skill OS

**語言：** [English](../README.md) | 繁體中文 | [简体中文](README.zh-CN.md) | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.2.0-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## 一人當八人團隊用 — 即使你是 Solo Founder

**OPC Skill OS** 把 [Cursor](https://cursor.com) 變成你的 AI 共同創辦人團隊。輸入 `@opc-os` + 目標，從點子到 MVP 到上線。

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

Translation of README.md at v1.2.0
