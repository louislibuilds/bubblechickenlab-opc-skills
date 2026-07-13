# OPC Skill OS

**語言：** [English](../README.md) | 繁體中文 | [简体中文](README.zh-CN.md) | [日本語](README.ja.md)

[![Version](https://img.shields.io/badge/version-v1.1.2-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## 一人當八人團隊用 — 即使你是 Solo Founder

**OPC Skill OS** 把 [Cursor](https://cursor.com) 變成你的 AI 共同創辦人團隊 — 不是又一個 prompt 合集。

| 角色 | Skill |
|------|-------|
| 產品經理 | `opc-product-thinking` |
| 前端工程師 | `opc-build-frontend` |
| 後端工程師 | `opc-build-backend-api` |
| QA 工程師 | `opc-build-qa` |
| 資安審查 | `opc-build-security` |
| 成長行銷 | `opc-growth-engine` |
| 內容策略 | `opc-content-engine` |
| 創辦人教練 | `opc-founder-os` |

**從點子 → MVP → 上線。** 一個提示變成 Ticket，路由到對的領域，產出明確的下一步。

### 跟普通 prompt 有什麼不同？

| | Prompt 庫 | Cursor Rules | MCP | **OPC Skill OS** |
|---|:---:|:---:|:---:|:---:|
| 可重用提示 | ✅ | ✅ | ❌ | ✅ |
| AI 團隊角色 | ❌ | ❌ | ❌ | ✅ |
| 工作流路由 | ❌ | ❌ | ✅ | ✅ |
| Ticket + PLAN MODE | ❌ | ❌ | ❌ | ✅ |
| 平行顧問審查 | ❌ | ❌ | ❌ | ✅ |

## 快速開始

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh

# 或一行安裝（macOS / Linux）
curl -fsSL https://raw.githubusercontent.com/louislibuilds/bubblechickenlab-opc-skills/main/install.sh | bash
```

```
# 在 Cursor 開啟任一專案：
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## 運作方式

分層架構 — 從**提示**到**可執行的下一步**，共四個階段：

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

| 層級 | 做什麼 |
|------|--------|
| **① Input** | 在 Cursor 輸入目標，一句話即可 |
| **② Orchestration** | `opc-os` 定義 MVP、建立 Ticket、選擇 skills |
| **③ Domain Advisory** | 相關領域**平行**審查（每域最多 3 點） |
| **④ Output** | 合併決策 — 現在出什麼、延後什麼、**下一步** |

架構詳解：[docs/architecture.md](architecture.md)

## 實際示範（文字版）

**輸入：** `@opc-os Build a job tracker for international students.`

**輸出（摘要）：** Ticket（feature · 2 weeks solo）→ 平行顧問（product / frontend / growth）→ Decision（next_action: scaffold data model）

完整範例：[examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## 適用對象

| 對象 | OPC 能幫你 |
|------|-----------|
| **Indie hacker** | 收斂 MVP、垂直切片出貨 |
| **創業者** | 一個提示 → 產品 + 成長 + 內容計畫 |
| **學生** | 把專題做成可展示的作品 |
| **接案方** | 可重複的 Cursor 交付流程 |
| **PM** | PRD-lite、跨領域審查，不需真人團隊 |

## 文件

| 文件 | 說明 |
|------|------|
| [architecture.md](architecture.md) | 系統架構 |
| [routing.md](routing.md) | Skill 路由 |
| [create-skill.md](create-skill.md) | 新增 Skill |
| [compatibility.md](compatibility.md) | 相容性 |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | 貢獻指南 |

## 相容性

Cursor v0.40+ · macOS / Linux（`install.sh`）· Windows（`install.ps1`）

詳見 [compatibility.md](compatibility.md)

## 授權

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.1.2
