#!/usr/bin/env bash
set -euo pipefail

echo "Updating ai-council repo..."
git pull

echo "Checking OpenClaw..."
openclaw doctor || true

echo "Done."
