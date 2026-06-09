#!/usr/bin/env bash
#
# check-cqn-skills.sh — validate structure of all cqn-* skills
#
# Checks that every skills/cqn-* directory contains the required files:
#   SKILL.md, manifest.yaml, README.md, and at least one of static/ or references/.
#
# Does NOT check nature-* skills.
# Returns 0 if all cqn skills pass, 1 if any skill has missing files.
# If no cqn skills exist, prints a warning and exits 0.
#
set -euo pipefail

SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../skills" && pwd)"
PASS=0
FAIL=0
WARN=0

# ANSI colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Collect cqn skill directories (max depth 2 to avoid traversing into skill subdirs)
CQN_DIRS=()
for d in "$SKILLS_DIR"/cqn-*/; do
  if [ -d "$d" ]; then
    CQN_DIRS+=("$d")
  fi
done

if [ ${#CQN_DIRS[@]} -eq 0 ]; then
  echo -e "${YELLOW}[WARN]${NC} No cqn-* skill directories found in $SKILLS_DIR"
  echo "       Nothing to check. (This is normal before Phase 2 completes.)"
  exit 0
fi

echo "Checking ${#CQN_DIRS[@]} cqn skill(s) in $SKILLS_DIR"
echo ""

for skill in "${CQN_DIRS[@]}"; do
  name="$(basename "$skill")"
  errors=()

  # Required files
  for f in SKILL.md manifest.yaml README.md; do
    if [ ! -f "$skill/$f" ]; then
      errors+=("missing $f")
    fi
  done

  # At least one of static/ or references/
  has_static=false
  has_refs=false
  [ -d "$skill/static" ] && has_static=true
  [ -d "$skill/references" ] && has_refs=true

  if ! $has_static && ! $has_refs; then
    errors+=("missing both static/ and references/ (need at least one)")
  fi

  if [ ${#errors[@]} -eq 0 ]; then
    echo -e "  ${GREEN}[PASS]${NC} $name"
    PASS=$((PASS + 1))
  else
    echo -e "  ${RED}[FAIL]${NC} $name"
    for e in "${errors[@]}"; do
      echo "         - $e"
    done
    FAIL=$((FAIL + 1))
  fi
done

echo ""
echo "Summary: $PASS passed, $FAIL failed"
exit $(( FAIL > 0 ? 1 : 0 ))
