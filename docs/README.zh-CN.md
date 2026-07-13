# OPC Skill OS

**语言：** [English](../README.md) | [繁體中文](README.zh-TW.md) | 简体中文 | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.0.2-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

一人公司（One-Person Company）的 [Cursor](https://cursor.com) AI 操作系统。

将每个提示转成 **Ticket**，路由至 **8 个 Skill 领域**，以**并行顾问**方式审查且不阻挡执行，以 MVP 优先出货。

## 快速开始

```bash
# 1. 全局安装
./install.sh          # macOS / Linux
.\install.ps1         # Windows
```

```
# 2. 在 Cursor 打开任一项目，然后：
@opc-os My SaaS landing page needs SEO meta tags. Ship this week.
```

就这样——`@opc-os` 会执行 PLAN MODE、路由各领域，并输出你的下一步。

## 目录对照

| Skill | Domain | Dept tag | 角色 |
|-------|--------|----------|------|
| [opc-os](../opc-os/SKILL.md) | meta | leadership | 编排器、PLAN MODE、Ticket 路由 |
| [opc-product-thinking](../opc-product-thinking/SKILL.md) | 1 | leadership | MVP、定价、验证 |
| [opc-build-engine](../opc-build-engine/SKILL.md) | 2 | engineering | 工程总线 |
| [opc-build-frontend](../opc-build-frontend/SKILL.md) | 2 | engineering | UI、组件、无障碍 |
| [opc-build-backend-api](../opc-build-backend-api/SKILL.md) | 2 | engineering | API、数据库、认证 |
| [opc-build-qa](../opc-build-qa/SKILL.md) | 2 | engineering | 测试、验收 |
| [opc-build-security](../opc-build-security/SKILL.md) | 2 | engineering | OWASP 快速闸门 |
| [opc-growth-engine](../opc-growth-engine/SKILL.md) | 3 | marketing | SEO、转化、获客 |
| [opc-ux-design](../opc-ux-design/SKILL.md) | 4 | marketing | UX 流程、设计系统 |
| [opc-analytics](../opc-analytics/SKILL.md) | 5 | leadership | 事件、漏斗、A/B |
| [opc-automation](../opc-automation/SKILL.md) | 6 | engineering | 工作流、代理、cron |
| [opc-content-engine](../opc-content-engine/SKILL.md) | 7 | marketing | Build-in-public、社群 |
| [opc-founder-os](../opc-founder-os/SKILL.md) | 8 | leadership | 周计划、专注 |

## 参考文档

- [SKILL-GRAPH.md](../reference/SKILL-GRAPH.md) — 领域触发链
- [parallel-review-protocol.md](../reference/parallel-review-protocol.md) — 非阻挡式协作规则
- [skill.schema.json](../reference/skill.schema.json) — skill 元数据 schema
- [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md) — 通用 Ticket 示例

## Presets

可选的产品线覆盖层，一般使用不必加载。

| Preset | 说明 |
|--------|------|
| [presets/jobseek/](../presets/jobseek/) | JOBO / KATA / nagi 产品线（作者工作区） |

用法：`@opc-os @presets/jobseek/PRESET.md <task>`

## 安装（全局）

将每个 `opc-*` skill 文件夹复制到 `~/.cursor/skills/`：

```bash
./install.sh
```

```powershell
.\install.ps1
```

两支脚本均可重复执行（会覆盖既有 `opc-*` skills）。

## 产品默认

| 场景 | 默认领域 |
|------|----------|
| 新 Web app / SaaS | `opc-build-*` + `opc-ux-design` + `opc-growth-engine` |
| 内容 / 社群 | `opc-content-engine` + `opc-growth-engine` |
| 新产品点子 | 通过 `opc-os` 走完整链 |

项目专属品牌 token 可放在 `presets/`，或引用你自己的 `BRAND.md` / `DESIGN-TOKENS.md`。

## 设计原则

- **领域优于部门** — engineering / marketing 是标签，不是组织层级。
- **顾问而非阻挡** — 只有 `CRITICAL` 严重度会挡下出货。
- **一人执行** — 默认 MVP 范围 ≤ 2 周。
- **渐进披露** — 子 skill 使用 `disable-model-invocation: true`；通过 `@opc-os` 或明确 `@` 加载。

## 授权

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.0.2
