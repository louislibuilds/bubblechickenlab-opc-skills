# OPC Skill OS

**语言：** [English](../README.md) | [繁體中文](README.zh-TW.md) | 简体中文 | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.1.2-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## 一人当八人团队用 — 即使你是 Solo Founder

**OPC Skill OS** 把 [Cursor](https://cursor.com) 变成你的 AI 联合创始人团队 — 不是又一个 prompt 合集。

| 角色 | Skill |
|------|-------|
| 产品经理 | `opc-product-thinking` |
| 前端工程师 | `opc-build-frontend` |
| 后端工程师 | `opc-build-backend-api` |
| QA 工程师 | `opc-build-qa` |
| 安全审查 | `opc-build-security` |
| 增长营销 | `opc-growth-engine` |
| 内容策略 | `opc-content-engine` |
| 创始人教练 | `opc-founder-os` |

**从点子 → MVP → 上线。** 一个提示变成 Ticket，路由到对的领域，产出明确的下一步。

### 跟普通 prompt 有什么不同？

| | Prompt 库 | Cursor Rules | MCP | **OPC Skill OS** |
|---|:---:|:---:|:---:|:---:|
| 可重用提示 | ✅ | ✅ | ❌ | ✅ |
| AI 团队角色 | ❌ | ❌ | ❌ | ✅ |
| 工作流路由 | ❌ | ❌ | ✅ | ✅ |
| Ticket + PLAN MODE | ❌ | ❌ | ❌ | ✅ |
| 平行顾问审查 | ❌ | ❌ | ❌ | ✅ |

## 快速开始

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh

# 或一行安装（macOS / Linux）
curl -fsSL https://raw.githubusercontent.com/louislibuilds/bubblechickenlab-opc-skills/main/install.sh | bash
```

```
# 在 Cursor 打开任一项目：
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## 运作方式

分层架构 — 从**提示**到**可执行的下一步**，共四个阶段：

```mermaid
flowchart TB
    subgraph L1["① INPUT LAYER"]
        direction LR
        user(["User Prompt"])
        cursor(["Cursor IDE"])
    end

    subgraph L2["② ORCHESTRATION — opc-os"]
        direction LR
        plan["PLAN MODE"]
        ticket["Ticket System"]
        router["Skill Router"]
        plan --> ticket --> router
    end

    subgraph L3["③ DOMAIN ADVISORY — 14 Skills · 3 Groups"]
        direction TB
        subgraph leadership["Leadership"]
            direction LR
            sk1["Product Thinking"]
            sk2["Founder OS"]
            sk3["Analytics"]
        end
        subgraph engineering["Engineering"]
            direction LR
            sk4["Build Engine"]
            sk5["Frontend"]
            sk6["Backend"]
            sk7["QA"]
            sk8["Security"]
            sk9["Automation"]
        end
        subgraph marketing["Marketing"]
            direction LR
            sk10["Growth"]
            sk11["UX Design"]
            sk12["Content"]
        end
    end

    subgraph L4["④ OUTPUT LAYER"]
        direction LR
        advisory["Parallel Advisory"]
        decision["Decision"]
        action["Next Action → Ship"]
        advisory --> decision --> action
    end

    user --> cursor
    cursor --> plan
    router --> sk1
    router --> sk4
    router --> sk10
    sk1 --> advisory
    sk4 --> advisory
    sk10 --> advisory

    classDef cInput fill:#FF9900,stroke:#232F3E,color:#FFFFFF,stroke-width:2px
    classDef cOrch fill:#232F3E,stroke:#FF9900,color:#FFFFFF,stroke-width:2px
    classDef cLead fill:#527FFF,stroke:#232F3E,color:#FFFFFF
    classDef cEng fill:#01A88D,stroke:#232F3E,color:#FFFFFF
    classDef cMkt fill:#8C4FFF,stroke:#232F3E,color:#FFFFFF
    classDef cOut fill:#1D8102,stroke:#232F3E,color:#FFFFFF,stroke-width:2px

    class user,cursor cInput
    class plan,ticket,router cOrch
    class sk1,sk2,sk3 cLead
    class sk4,sk5,sk6,sk7,sk8,sk9 cEng
    class sk10,sk11,sk12 cMkt
    class advisory,decision,action cOut
```

| 层级 | 做什么 |
|------|--------|
| **① Input** | 在 Cursor 输入目标，一句话即可 |
| **② Orchestration** | `opc-os` 定义 MVP、创建 Ticket、选择 skills |
| **③ Domain Advisory** | 相关领域**并行**审查（每域最多 3 点） |
| **④ Output** | 合并决策 — 现在出什么、延后什么、**下一步** |

架构详解：[docs/architecture.md](architecture.md)

## 实际示范（文字版）

**输入：** `@opc-os Build a job tracker for international students.`

**输出（摘要）：** Ticket → 平行顾问 → Decision（next_action: scaffold data model）

完整示例：[examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## 适用对象

| 对象 | OPC 能帮你 |
|------|-----------|
| **Indie hacker** | 收敛 MVP、垂直切片出货 |
| **创业者** | 一个提示 → 产品 + 增长 + 内容计划 |
| **学生** | 把课题做成可展示的作品 |
| **接案方** | 可重复的 Cursor 交付流程 |
| **PM** | PRD-lite、跨领域审查 |

## 文档

| 文档 | 说明 |
|------|------|
| [architecture.md](architecture.md) | 系统架构 |
| [routing.md](routing.md) | Skill 路由 |
| [create-skill.md](create-skill.md) | 新增 Skill |
| [compatibility.md](compatibility.md) | 兼容性 |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | 贡献指南 |

## 兼容性

Cursor v0.40+ · macOS / Linux · Windows

详见 [compatibility.md](compatibility.md)

## 授权

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.1.2
