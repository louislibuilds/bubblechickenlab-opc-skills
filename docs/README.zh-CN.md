# OPC Skill OS

**语言：** [English](../README.md) | [繁體中文](README.zh-TW.md) | 简体中文 | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.2.1-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

**把 Cursor 变成你的创业团队。** 你不是在堆 prompt — 你是在用 AI 部门一起规划、审查、出货。

[Bubble Chicken Lab](https://github.com/louislibuilds) 的 **OPC Skill OS** 是给一人公司用的 [Cursor](https://cursor.com) 框架。一句话进去 → 收敛好的 Ticket → Product / Engineering / Marketing 并行建议 → 今天就能做的 **next action**。没有两千字废话，不用猜下一步。

**为什么值得安装：**

- **AI 员工，不是 prompt 合集** — 14 个角色 skill（PM、前后端、QA、安全、增长、内容、创始人教练…）
- **Ticket 优先** — 写 code 前先定范围、领域、出货路径
- **并行顾问** — 多部门同时审查；只有 `CRITICAL` 会挡你
- **默认 MVP** — 为 solo founder 设计（≤ 2 周），不是企业级空转
- **装一次到处用** — `./install.sh` 后任何项目 `@opc-os`

## 一人当八人团队用 — 即使你是 Solo Founder

**从点子 → MVP → 上线。** 输入 `@opc-os` + 你的目标。

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

Translation of README.md at v1.2.1
