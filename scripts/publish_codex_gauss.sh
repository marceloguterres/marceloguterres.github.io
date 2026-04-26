#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-codex_gauss}"
REPO_URL="https://github.com/marceloguterres/codex_gauss.git"

if [ -d "$TARGET_DIR/.git" ]; then
  echo "Usando repositório existente em $TARGET_DIR"
else
  git clone "$REPO_URL" "$TARGET_DIR"
fi

cp codex_gauss_files/README.md "$TARGET_DIR/README.md"
cp codex_gauss_files/simulacao_normal.py "$TARGET_DIR/simulacao_normal.py"

cd "$TARGET_DIR"
git add README.md simulacao_normal.py
git commit -m "Add normal distribution simulator" || echo "Nada para commitar"
echo "Pronto. Agora rode: cd $TARGET_DIR && git push origin main"
