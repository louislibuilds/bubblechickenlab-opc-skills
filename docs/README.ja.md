# OPC Skill OS

**言語：** [English](../README.md) | [繁體中文](README.zh-TW.md) | [简体中文](README.zh-CN.md) | 日本語

[![Version](https://img.shields.io/badge/version-v1.0.3-orange.svg)](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](../LICENSE)
[![Skills](https://img.shields.io/badge/skills-14-green.svg)](../reference/skill.schema.json)
[![Cursor](https://img.shields.io/badge/Cursor-Skills-purple.svg)](https://cursor.com/docs/context/skills)

[Cursor](https://cursor.com) 向けの一人会社（One-Person Company）AI オペレーティングシステム。

すべてのプロンプトを **Ticket** に変換し、**8 つの Skill ドメイン**へルーティング。**並列アドバイザリ**でレビューしつつ実行を止めず、MVP ファーストで出荷する。

## クイックスタート

```bash
# 1. グローバルインストール
./install.sh          # macOS / Linux
.\install.ps1         # Windows
```

```
# 2. Cursor で任意のプロジェクトを開き：
@opc-os My SaaS landing page needs SEO meta tags. Ship this week.
```

これだけです——`@opc-os` が PLAN MODE を実行し、ドメインをルーティングして次のアクションを出力します。

## ディレクトリマップ

| Skill | Domain | Dept tag | 役割 |
|-------|--------|----------|------|
| [opc-os](../opc-os/SKILL.md) | meta | leadership | オーケストレーター、PLAN MODE、Ticket ルーティング |
| [opc-product-thinking](../opc-product-thinking/SKILL.md) | 1 | leadership | MVP、価格設定、検証 |
| [opc-build-engine](../opc-build-engine/SKILL.md) | 2 | engineering | エンジニアリングバス |
| [opc-build-frontend](../opc-build-frontend/SKILL.md) | 2 | engineering | UI、コンポーネント、a11y |
| [opc-build-backend-api](../opc-build-backend-api/SKILL.md) | 2 | engineering | API、DB、認証 |
| [opc-build-qa](../opc-build-qa/SKILL.md) | 2 | engineering | テスト、受け入れ |
| [opc-build-security](../opc-build-security/SKILL.md) | 2 | engineering | OWASP クイックゲート |
| [opc-growth-engine](../opc-growth-engine/SKILL.md) | 3 | marketing | SEO、コンバージョン、獲得 |
| [opc-ux-design](../opc-ux-design/SKILL.md) | 4 | marketing | UX フロー、デザインシステム |
| [opc-analytics](../opc-analytics/SKILL.md) | 5 | leadership | イベント、ファネル、A/B |
| [opc-automation](../opc-automation/SKILL.md) | 6 | engineering | ワークフロー、エージェント、cron |
| [opc-content-engine](../opc-content-engine/SKILL.md) | 7 | marketing | Build-in-public、ソーシャル |
| [opc-founder-os](../opc-founder-os/SKILL.md) | 8 | leadership | 週次計画、フォーカス |

## リファレンス

- [SKILL-GRAPH.md](../reference/SKILL-GRAPH.md) — ドメイントリガーチェーン
- [parallel-review-protocol.md](../reference/parallel-review-protocol.md) — 非ブロッキング協業ルール
- [skill.schema.json](../reference/skill.schema.json) — skill メタデータ schema
- [examples/TICKET-EXAMPLE.md](../examples/TICKET-EXAMPLE.md) — 汎用 Ticket ウォークスルー

## インストール（グローバル）

各 `opc-*` skill フォルダを `~/.cursor/skills/` にコピー：

```bash
./install.sh
```

```powershell
.\install.ps1
```

どちらのスクリプトも再実行可能（既存の `opc-*` skills を上書き）。

## プロダクトデフォルト

| シナリオ | デフォルトドメイン |
|----------|-------------------|
| 新規 Web app / SaaS | `opc-build-*` + `opc-ux-design` + `opc-growth-engine` |
| コンテンツ / ソーシャル | `opc-content-engine` + `opc-growth-engine` |
| 新規プロダクトアイデア | `opc-os` 経由でフルチェーン |

プロジェクト固有のブランドトークンは、独自の `BRAND.md` / `DESIGN-TOKENS.md` を参照するか、ワークスペースにローカル preset オーバーレイを作成してください（この repo には含まれません）。

## 設計原則

- **部門よりドメイン** — engineering / marketing はタグであり、組織階層ではない。
- **アドバイザリでブロックしない** — `CRITICAL` 深刻度のみ出荷を止める。
- **ソロ実行** — デフォルト MVP スコープ ≤ 2 週間。
- **段階的開示** — サブ skill は `disable-model-invocation: true`；`@opc-os` または明示的 `@` で読み込む。

## ライセンス

[MIT](../LICENSE) — Louis Li / Bubble Chicken Lab

---

Translation of README.md at v1.0.3
