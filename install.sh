#!/usr/bin/env bash
# Install OPC skills to ~/.cursor/skills for global Cursor access.
# Finds opc-* under repo root and skills/*, flattens to ~/.cursor/skills/opc-*.
# Safe to re-run (overwrites existing opc-* skills).
#
# Usage:
#   ./install.sh
#   ./install.sh --dry-run

set -euo pipefail

SOURCE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_ROOT="${HOME}/.cursor/skills"
DRY_RUN=false

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=true
fi

skill_dirs=()
while IFS= read -r -d '' dir; do
  skill_dirs+=("$dir")
done < <(find "$SOURCE_ROOT" -type d -name 'opc-*' -print0)

if [[ ${#skill_dirs[@]} -eq 0 ]]; then
  echo "No opc-* skill directories found in $SOURCE_ROOT" >&2
  exit 1
fi

echo "OPC Skill OS install"
echo "  From: $SOURCE_ROOT"
echo "  To:   $DEST_ROOT"
echo ""

if [[ "$DRY_RUN" == false ]]; then
  mkdir -p "$DEST_ROOT"
fi

for dir in "${skill_dirs[@]}"; do
  name="$(basename "$dir")"
  target="$DEST_ROOT/$name"
  if [[ "$DRY_RUN" == true ]]; then
    echo "[dry-run] Would copy $dir -> $target"
  else
    rm -rf "$target"
    cp -R "$dir" "$target"
    echo "Installed $name"
  fi
done

echo ""
if [[ "$DRY_RUN" == true ]]; then
  echo "Dry run complete. Run without --dry-run to install."
else
  echo "Done. Use @opc-os in Cursor to start."
  echo "Installed ${#skill_dirs[@]} skills."
fi
