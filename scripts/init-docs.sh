#!/usr/bin/env sh
set -e
TARGET="$1"
LANG="$2"
FORCE="$3"
if [ -z "$TARGET" ] || [ -z "$LANG" ]; then
  echo "usage: scripts/init-docs.sh <target_dir> <en|zh> [--force]"
  exit 1
fi
mkdir -p "$TARGET"
copy() {
  SRC="$1"
  DST="$2"
  if [ -e "$DST" ] && [ "$FORCE" != "--force" ]; then
    return 0
  fi
  rm -rf "$DST"
  cp -R "$SRC" "$DST"
}
copy "docs" "$TARGET/docs"
copy "README.en.md" "$TARGET/README.en.md"
copy "README.zh.md" "$TARGET/README.zh.md"
copy "README.md" "$TARGET/README.md"
if [ "$LANG" = "zh" ]; then
  mv "$TARGET/README.zh.md" "$TARGET/README.md"
  mv "$TARGET/README.en.md" "$TARGET/README.en.md"
fi
