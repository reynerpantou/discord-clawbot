#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROFILE_FILE="$ROOT_DIR/build/ai-council-profile.md"
AGENT_MD="$HOME/.openclaw/agents/main/agent.md"

cd "$ROOT_DIR"

./scripts/build-profile.sh

mkdir -p "$(dirname "$AGENT_MD")"

cp "$PROFILE_FILE" "$AGENT_MD"

echo "Deployed AI Council profile to:"
echo "$AGENT_MD"

openclaw gateway restart

echo "Gateway restarted."
