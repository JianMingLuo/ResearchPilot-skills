#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SKILLS_DIR="$REPO_ROOT/skills"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_HOME_DIR/skills"

MODE="symlink"
FORCE="false"

usage() {
  cat <<EOF
Usage: install-local-skills.sh [--copy] [--force]

Options:
  --copy    Copy skill folders instead of creating symlinks
  --force   Overwrite existing target skill folders/symlinks

Default:
  Install all ResearchPilot skills into: $TARGET_DIR
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --copy)
      MODE="copy"
      ;;
    --force)
      FORCE="true"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage
      exit 1
      ;;
  esac
  shift
done

mkdir -p "$TARGET_DIR"

for skill_path in "$SKILLS_DIR"/*; do
  [ -d "$skill_path" ] || continue
  skill_name="$(basename "$skill_path")"
  target_path="$TARGET_DIR/$skill_name"

  if [ -e "$target_path" ] || [ -L "$target_path" ]; then
    if [ "$FORCE" = "true" ]; then
      rm -rf "$target_path"
    else
      echo "skip: $skill_name already exists at $target_path"
      continue
    fi
  fi

  if [ "$MODE" = "copy" ]; then
    cp -R "$skill_path" "$target_path"
    echo "copied: $skill_name -> $target_path"
  else
    ln -s "$skill_path" "$target_path"
    echo "linked: $skill_name -> $target_path"
  fi
done

echo
echo "ResearchPilot skills installed to: $TARGET_DIR"
echo "Restart Codex to pick up new skills."

