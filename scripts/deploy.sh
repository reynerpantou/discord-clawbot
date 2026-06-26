#!/usr/bin/env bash
set -euo pipefail

echo "Applying OpenClaw config patches..."

if command -v openclaw >/dev/null 2>&1; then
  openclaw config patch --file configs/openclaw.patch.json5
  openclaw config patch --file configs/discord.patch.json5
  openclaw config validate
  openclaw gateway restart
  echo "Deployment complete."
else
  echo "openclaw command not found."
  exit 1
fi
