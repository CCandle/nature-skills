#!/usr/bin/env bash
#
# update-cqn-skills.sh — sync cqn-* skills to a Hermes skills directory
#
# Copies only skills/cqn-* directories (not nature-*) to the target path.
# Does not delete non-cqn content in the target directory.
#
# Usage:
#   HERMES_SKILLS_DIR=/path ./scripts/update-cqn-skills.sh
#   export HERMES_SKILLS_DIR=/path; ./scripts/update-cqn-skills.sh
#
# If HERMES_SKILLS_DIR is not set, the script prints instructions and exits.
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SRC="$REPO_ROOT/skills"

# Resolve target directory
DST="${HERMES_SKILLS_DIR:-}"
if [ -z "$DST" ]; then
  echo "error: HERMES_SKILLS_DIR is not set."
  echo ""
  echo "Usage:"
  echo "  export HERMES_SKILLS_DIR=/path/to/your/skills"
  echo "  $0"
  echo ""
  echo "Example:"
  echo "  export HERMES_SKILLS_DIR=\$HOME/.hermes/skills"
  echo "  ./scripts/update-cqn-skills.sh"
  exit 1
fi

if [ ! -d "$SRC" ]; then
  echo "error: skills directory not found at $SRC" >&2
  exit 1
fi

if ! command -v rsync >/dev/null 2>&1; then
  echo "error: rsync is required but not installed" >&2
  exit 1
fi

mkdir -p "$DST"

echo "==> Syncing cqn-* skills from $SRC"
echo "    into $DST"

COUNT=0
for path in "$SRC"/cqn-*/; do
  if [ -d "$path" ]; then
    d="$(basename "$path")"
    mkdir -p "$DST/$d"
    if [ "${CQN_SYNC_DELETE:-0}" = "1" ]; then
      rsync -a --delete "$path" "$DST/$d/"
    else
      rsync -a "$path" "$DST/$d/"
    fi
    echo "    ✓ $d"
    COUNT=$((COUNT + 1))
  fi
done

if [ "$COUNT" -eq 0 ]; then
  echo "    (no cqn-* skills found — nothing to sync)"
else
  echo "==> Done. Synced $COUNT cqn skill(s)."
fi

echo "    nature-* skills were NOT synced."
echo "    Existing non-cqn content in $DST was left untouched."
