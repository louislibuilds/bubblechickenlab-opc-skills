# OPC Skill OS

**语言：** [English](../README.md) | [繁體中文](README.zh-TW.md) | 简体中文 | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.2.0-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## 一人当八人团队用 — 即使你是 Solo Founder

**OPC Skill OS** 把 [Cursor](https://cursor.com) 变成你的 AI 联合创始人团队。输入 `@opc-os` + 目标，从点子到 MVP 到上线。

## 快速开始

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh
```

```
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## 你的 AI 团队（14 skills · 3 组）

入口：[`opc-os`](../opc-os/SKILL.md) · 目录：[`skills/`](../skills/README.md)

### Leadership — 策略与专注

| Skill | 角色 |
|-------|------|
| `opc-product-thinking` | MVP、定价、验证 |
| `opc-founder-os` | 周计划、专注 |
| `opc-analytics` | 指标、漏斗、AARRR |

### Engineering — 构建与出货

| Skill | 角色 |
|-------|------|
| `opc-build-engine` | 工程总线 |
| `opc-build-frontend` | UI、无障碍 |
| `opc-build-backend-api` | API、数据库 |
| `opc-build-qa` | 测试、验收 |
| `opc-build-security` | 安全闸门 |
| `opc-automation` | 自动化、CI |

### Marketing — 增长与品牌

| Skill | 角色 |
|-------|------|
| `opc-growth-engine` | SEO、转化 |
| `opc-ux-design` | UX、设计系统 |
| `opc-content-engine` | 内容、社群 |

## 运作方式

![OPC Skill OS 架构](assets/opc-architecture.png)

| 层级 | 做什么 |
|------|--------|
| **① Input** | 在 Cursor 输入目标 |
| **② Orchestration** | `opc-os` 定义 MVP、创建 Ticket |
| **③ Domain Advisory** | Leadership / Engineering / Marketing 并行审查 |
| **④ Output** | 合并决策与 **next action** |

[docs/architecture.md](architecture.md) · [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## 授权

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.2.0
