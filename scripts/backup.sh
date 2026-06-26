#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="backups/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"

if [ -f "$HOME/.openclaw/openclaw.json" ]; then
  cp "$HOME/.openclaw/openclaw.json" "$BACKUP_DIR/openclaw.json"
fi

echo "Backup written to $BACKUP_DIR"
