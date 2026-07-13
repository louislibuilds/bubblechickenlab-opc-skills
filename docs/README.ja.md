# OPC Skill OS

**言語：** [English](../README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | 日本語

[![Version](https://img.shields.io/badge/version-v1.1.2-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

## 一人で8人チームのように — Solo Founder でも

**OPC Skill OS** は [Cursor](https://cursor.com) を AI 共同創業者チームに変える — 単なるプロンプト集ではありません。

| 役割 | Skill |
|------|-------|
| プロダクトマネージャー | `opc-product-thinking` |
| フロントエンド | `opc-build-frontend` |
| バックエンド | `opc-build-backend-api` |
| QA | `opc-build-qa` |
| セキュリティ | `opc-build-security` |
| グロース | `opc-growth-engine` |
| コンテンツ | `opc-content-engine` |
| ファウンダーコーチ | `opc-founder-os` |

**アイデア → MVP → ローンチ。** 1つのプロンプトが Ticket になり、ドメインにルーティングされ、次のアクションが出力されます。

### 普通のプロンプトとの違い

| | プロンプト集 | Cursor Rules | MCP | **OPC Skill OS** |
|---|:---:|:---:|:---:|:---:|
| 再利用可能 | ✅ | ✅ | ❌ | ✅ |
| AI チーム役割 | ❌ | ❌ | ❌ | ✅ |
| ワークフロー routing | ❌ | ❌ | ✅ | ✅ |
| Ticket + PLAN MODE | ❌ | ❌ | ❌ | ✅ |
| 並列アドバイザリ | ❌ | ❌ | ❌ | ✅ |

## クイックスタート

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh

# ワンライナー（macOS / Linux）
curl -fsSL https://raw.githubusercontent.com/louislibuilds/bubblechickenlab-opc-skills/main/install.sh | bash
```

```
# Cursor で任意のプロジェクトを開き：
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## 仕組み

レイヤーアーキテクチャ — **プロンプト**から**実行可能な次のアクション**まで、4 段階：

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

| レイヤー | 内容 |
|---------|------|
| **① Input** | Cursor でゴールを入力 — 一文で OK |
| **② Orchestration** | `opc-os` が MVP を定義し Ticket を作成、skills を選択 |
| **③ Domain Advisory** | 関連ドメインが**並列**レビュー（各 3 点まで） |
| **④ Output** | 統合された決定 — 今出すもの、延期、**次のアクション** |

詳細：[docs/architecture.md](architecture.md)

## デモ（テキスト）

**入力：** `@opc-os Build a job tracker for international students.`

**出力（要約）：** Ticket → 並列アドバイザリ → Decision

完全な例：[examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## ユースケース

| 対象 | OPC の役割 |
|------|-----------|
| **Indie hacker** | MVP スコープ、垂直スライス出荷 |
| **起業家** | 1 プロンプト → プロダクト + グロース + コンテンツ |
| **学生** | 課題をポートフォリオに |
| **エージェンシー** | 反復可能な Cursor ワークフロー |
| **PM** | PRD-lite、チームなしの横断レビュー |

## ドキュメント

| ドキュメント | 説明 |
|-------------|------|
| [architecture.md](architecture.md) | アーキテクチャ |
| [routing.md](routing.md) | ルーティング |
| [create-skill.md](create-skill.md) | Skill 作成 |
| [compatibility.md](compatibility.md) | 互換性 |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | 貢献ガイド |

## 互換性

Cursor v0.40+ · macOS / Linux · Windows

[compatibility.md](compatibility.md) を参照

## ライセンス

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.1.2
