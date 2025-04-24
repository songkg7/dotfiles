#!/bin/bash

LOGFILE="$HOME/.local/logs/update-tools.log"
mkdir -p "$(dirname "$LOGFILE")"

echo "[$(date)] Start: Updating brew, mise, chezmoi, and pushing dotfiles" | tee -a "$LOGFILE"

# Update Homebrew
if command -v brew >/dev/null 2>&1; then
  echo "[$(date)] Updating Homebrew..." | tee -a "$LOGFILE"
  brew update 2>&1 | tee -a "$LOGFILE"
  brew upgrade 2>&1 | tee -a "$LOGFILE"
else
  echo "[$(date)] brew command not found." | tee -a "$LOGFILE"
fi

# Update mise
if command -v mise >/dev/null 2>&1; then
  echo "[$(date)] Updating mise..." | tee -a "$LOGFILE"
  mise upgrade 2>&1 | tee -a "$LOGFILE"
else
  echo "[$(date)] mise command not found." | tee -a "$LOGFILE"
fi

# Update chezmoi
if command -v chezmoi >/dev/null 2>&1; then
  echo "[$(date)] Updating chezmoi dotfiles..." | tee -a "$LOGFILE"
  chezmoi update 2>&1 | tee -a "$LOGFILE"
else
  echo "[$(date)] chezmoi command not found." | tee -a "$LOGFILE"
fi

# Git push for chezmoi source
CHEZMOI_SRC=$(chezmoi source-path)
cd "$CHEZMOI_SRC" || {
  echo "[$(date)] Failed to access chezmoi source directory: $CHEZMOI_SRC" | tee -a "$LOGFILE"
  exit 1
}

if [ -n "$(git status --porcelain)" ]; then
  echo "[$(date)] Uncommitted changes found. Committing and pushing..." | tee -a "$LOGFILE"
  git add . 2>&1 | tee -a "$LOGFILE"
  git commit -m "chore(dotfiles): automated update on $(date '+%Y-%m-%d %H:%M:%S')" 2>&1 | tee -a "$LOGFILE"
  git push 2>&1 | tee -a "$LOGFILE"
else
  echo "[$(date)] No changes to push." | tee -a "$LOGFILE"
fi

echo "[$(date)] Done." | tee -a "$LOGFILE"

