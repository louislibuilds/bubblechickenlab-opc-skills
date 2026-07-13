# OPC Skill OS

**言語：** [English](../README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | 日本語

[![Version](https://img.shields.io/badge/version-v1.2.1-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

**Cursor をスタートアップチームに。** プロンプトを投げるのではなく、AI の部署で計画・レビュー・出荷する。

[Bubble Chicken Lab](https://github.com/louislibuilds) の **OPC Skill OS** は、[Cursor](https://cursor.com) 向けの一人会社フレームワーク。一文入力 → Ticket → Product / Engineering / Marketing の並列アドバイス → 今日実行できる **next action**。長文の羅列なし、次に何をするか迷わない。

**インストールする理由：**

- **プロンプト集ではなく AI 社員** — 14 ロール skill（PM、FE/BE、QA、セキュリティ、グロース、コンテンツ…）
- **Ticket ファースト** — コード前にスコープと出荷パスを確定
- **並列アドバイザリ** — `CRITICAL` のみブロック
- **MVP デフォルト** — solo founder 向け（≤ 2 週間）
- **一度インストールで全プロジェクト** — `@opc-os`

## 一人で8人チームのように — Solo Founder でも

**アイデア → MVP → ローンチ。** `@opc-os` + ゴールを入力。

## クイックスタート

```bash
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh
```

```
@opc-os Build a job tracker for international students. MVP in 2 weeks.
```

## あなたの AI チーム（14 skills · 3 グループ）

エントリ：[`opc-os`](../opc-os/SKILL.md) · 目録：[`skills/`](../skills/README.md)

### Leadership — 戦略とフォーカス

| Skill | 役割 |
|-------|------|
| `opc-product-thinking` | MVP、価格、検証 |
| `opc-founder-os` | 週次計画 |
| `opc-analytics` | メトリクス、AARRR |

### Engineering — 構築と出荷

| Skill | 役割 |
|-------|------|
| `opc-build-engine` | エンジニアリングバス |
| `opc-build-frontend` | UI、a11y |
| `opc-build-backend-api` | API、DB |
| `opc-build-qa` | テスト |
| `opc-build-security` | セキュリティ |
| `opc-automation` | 自動化 |

### Marketing — 成長とブランド

| Skill | 役割 |
|-------|------|
| `opc-growth-engine` | SEO、コンバージョン |
| `opc-ux-design` | UX、デザインシステム |
| `opc-content-engine` | コンテンツ |

## 仕組み

![OPC Skill OS アーキテクチャ](assets/opc-architecture.png)

| レイヤー | 内容 |
|---------|------|
| **① Input** | Cursor でゴールを入力 |
| **② Orchestration** | `opc-os` が MVP と Ticket を作成 |
| **③ Domain Advisory** | 3 グループが並列レビュー |
| **④ Output** | 決定と **next action** |

[docs/architecture.md](architecture.md) · [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md)

## ライセンス

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.2.1
