#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"
TARGET_DIR="${1:-$PWD}"
FORCE_CONTEXT="${VALORCMO_FORCE_CONTEXT:-0}"

log() {
  printf '[ValorCMO] %s\n' "$*"
}

copy_dir() {
  local src="$1"
  local dest="$2"
  mkdir -p "$dest"
  cp -R "$src"/. "$dest"/
}

if [[ ! -d "$REPO_ROOT/skills" || ! -f "$REPO_ROOT/tools/REGISTRY.md" ]]; then
  echo "Install script must be run from inside the ValorCMO repository." >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"
mkdir -p "$TARGET_DIR/.agents"
mkdir -p "$TARGET_DIR/tools"

log "Installing skills into: $TARGET_DIR/skills"
copy_dir "$REPO_ROOT/skills" "$TARGET_DIR/skills"

log "Installing compatibility docs into: $TARGET_DIR/tools"
copy_dir "$REPO_ROOT/tools" "$TARGET_DIR/tools"

EXAMPLE_SRC="$REPO_ROOT/.agents/product-marketing-context.example.md"
CONTEXT_DEST="$TARGET_DIR/.agents/product-marketing-context.md"
EXAMPLE_DEST="$TARGET_DIR/.agents/product-marketing-context.example.md"

if [[ -f "$EXAMPLE_SRC" ]]; then
  cp "$EXAMPLE_SRC" "$EXAMPLE_DEST"
  log "Wrote starter template: $EXAMPLE_DEST"

  if [[ ! -f "$CONTEXT_DEST" ]]; then
    cp "$EXAMPLE_SRC" "$CONTEXT_DEST"
    log "Created shared context file: $CONTEXT_DEST"
  elif [[ "$FORCE_CONTEXT" == "1" ]]; then
    cp "$EXAMPLE_SRC" "$CONTEXT_DEST"
    log "Overwrote shared context file because VALORCMO_FORCE_CONTEXT=1"
  else
    log "Preserved existing shared context file: $CONTEXT_DEST"
  fi
fi

cat <<EOF

ValorCMO install complete.

Installed:
- $TARGET_DIR/skills
- $TARGET_DIR/tools
- $EXAMPLE_DEST

Next steps:
1. Edit $CONTEXT_DEST with your real product and audience context.
2. Keep company-specific context local to the workspace.
3. Re-run this installer after ValorCMO updates to refresh skills and tools.

Tip:
- To overwrite an existing .agents/product-marketing-context.md, run with VALORCMO_FORCE_CONTEXT=1.
EOF
