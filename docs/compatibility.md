# Compatibility

## Cursor

| Feature | Minimum | Notes |
|---------|---------|-------|
| Skills (`SKILL.md`) | Cursor v0.40+ | Installed to `~/.cursor/skills/` |
| `@` mentions | Required | `@opc-os` to invoke orchestrator |
| Agent mode | Recommended | For execution after PLAN MODE |

Cursor Skills format evolves. Pin to a [release tag](https://github.com/louislibuilds/bubblechickenlab-opc-skills/releases) for stability.

## Operating Systems

| OS | Install | Path |
|----|---------|------|
| macOS | `./install.sh` or `install.ps1` | `~/.cursor/skills/` |
| Linux | `./install.sh` | `~/.cursor/skills/` |
| Windows | `.\install.ps1` | `%USERPROFILE%\.cursor\skills\` |

## Install Methods

```bash
# Clone + install
git clone https://github.com/louislibuilds/bubblechickenlab-opc-skills.git
cd bubblechickenlab-opc-skills && ./install.sh

# One-liner (macOS / Linux)
curl -fsSL https://raw.githubusercontent.com/louislibuilds/bubblechickenlab-opc-skills/main/install.sh | bash
```

Re-run install scripts safely — they recursively find all `opc-*` folders and flatten to `~/.cursor/skills/`.

## Not Yet Supported

| Method | Status |
|--------|--------|
| `npx opc-skills install` | Planned |
| `brew install opc-skills` | Planned |
| VS Code Copilot | Out of scope (Cursor-specific) |

## Versioning

OPC Skill OS versions are tagged (`v1.1.0`). Skills and docs at a given tag are intended to work together. Check README footer for current version.

## Reporting Issues

If a Cursor update breaks skill loading, open an issue with:

- Cursor version
- OS
- Install method
- Error or unexpected behavior
