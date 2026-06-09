#!/usr/bin/env bash
#
# check-cqn-skills.sh — validate structure and manifest references of cqn-* skills
#
# Checks:
#   1. Required files: SKILL.md, manifest.yaml, README.md
#   2. At least one of static/ or references/ directories
#   3. Every path in manifest.yaml (always_load, axes values, references) resolves
#      to an existing file
#
# Does NOT check nature-* skills.
# Returns 0 if all cqn skills pass, 1 if any skill has issues.
# If no cqn skills exist, prints a warning and exits 0.
#
set -euo pipefail

SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../skills" && pwd)"
PASS=0
FAIL=0

# ANSI colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Collect cqn skill directories (top-level only)
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
  warnings=()

  # ── Check 1: Required files ──────────────────────────────────────────
  for f in SKILL.md manifest.yaml README.md; do
    if [ ! -f "$skill/$f" ]; then
      errors+=("missing $f")
    fi
  done

  # ── Check 2: At least one of static/ or references/ ──────────────────
  has_static=false; has_refs=false
  [ -d "$skill/static" ]     && has_static=true
  [ -d "$skill/references" ] && has_refs=true
  if ! $has_static && ! $has_refs; then
    errors+=("missing both static/ and references/ (need at least one)")
  fi

  # ── Thin-skill warning: no references/ ───────────────────────────────
  # Low-frequency skills (high-impact*, citation, response, data-availability,
  # journal-style) should typically have references for policy/rules content.
  if ! $has_refs; then
    case "$name" in
      cqn-high-impact-*|cqn-citation|cqn-response|cqn-data-availability|cqn-journal-style)
        warnings+=("no references/ directory (adapter skill with no policy references)")
        ;;
      cqn-paper2ppt|cqn-paper-reader|cqn-paper-writing|cqn-report-writing|cqn-figure)
        warnings+=("no references/ directory (may need example templates)")
        ;;
    esac
  fi

  # ── Check 3: Manifest path references ────────────────────────────────
  mf="$skill/manifest.yaml"
  if [ -f "$mf" ]; then
    # Extract paths from always_load list (lines starting with "  - " under always_load:)
    # and from axes.values (lines like "      adc: path/to/file.md")
    # and from references.on_demand (lines like "      path: path/to/file.md")
    #
    # Strategy: grep lines that look like YAML list items with .md or .py paths
    while IFS= read -r line; do
      # Strip leading whitespace and "- " prefix
      raw=$(echo "$line" | sed 's/^[[:space:]]*-[[:space:]]*//' | sed 's/^[[:space:]]*//')
      # Also match "path: something.md" from references.on_demand entries
      if echo "$raw" | grep -q '^path:'; then
        raw=$(echo "$raw" | sed 's/^path:[[:space:]]*//')
      fi
      # Also match axis value mapping like "adc: references/file.md"
      raw=$(echo "$raw" | sed 's/^[a-z0-9_-]*:[[:space:]]*//')

      # Keep only if it looks like a relative path ending in .md or .py
      if echo "$raw" | grep -q '^[^/]*/.*\.\(md\|py\)$'; then
        # Resolve relative path from skill directory
        resolved="$skill/$raw"
        if [ ! -f "$resolved" ] && [ ! -d "$resolved" ]; then
          errors+=("manifest references non-existent path: $raw (resolved: $resolved)")
        fi
      fi
    done < <(grep -E '^[[:space:]]+-[[:space:]]|path:[[:space:]]|^[[:space:]]+[a-z].*:.*\.(md|py)' "$mf" 2>/dev/null || true)
  fi

  # ── Report ────────────────────────────────────────────────────────────
  if [ ${#errors[@]} -gt 0 ]; then
    echo -e "  ${RED}[FAIL]${NC} $name"
    for e in "${errors[@]}"; do
      echo "         - $e"
    done
    FAIL=$((FAIL + 1))
  elif [ ${#warnings[@]} -gt 0 ]; then
    echo -e "  ${GREEN}[PASS]${NC} $name ${YELLOW}(+${#warnings[@]} warning(s))${NC}"
    for w in "${warnings[@]}"; do
      echo "         ${YELLOW}⚠${NC} $w"
    done
    PASS=$((PASS + 1))
  else
    echo -e "  ${GREEN}[PASS]${NC} $name"
    PASS=$((PASS + 1))
  fi
done

echo ""
echo "Summary: $PASS passed, $FAIL failed"
exit $(( FAIL > 0 ? 1 : 0 ))
