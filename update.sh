#!/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

rsync -rL --delete ~/.config/nvim/ "$REPO_DIR/nvim/"
rsync -rL --delete ~/.config/ghostty/ "$REPO_DIR/ghostty/"
cp -L ~/.zshrc "$REPO_DIR/.zshrc"

cd "$REPO_DIR"
git add -A
git commit -m "update dot files" || echo "No changes to commit"
git push
