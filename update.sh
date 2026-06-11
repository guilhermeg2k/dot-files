#!/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

cp -rL ~/.config/nvim "$REPO_DIR/nvim"
cp -rL ~/.config/ghostty "$REPO_DIR/ghostty"
cp -L ~/.zshrc "$REPO_DIR/.zshrc"

cd "$REPO_DIR"
git add -A
git commit -m "update dot files" || echo "No changes to commit"
git push
