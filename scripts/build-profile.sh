#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="$ROOT_DIR/build"
OUTPUT_FILE="$BUILD_DIR/ai-council-profile.md"

mkdir -p "$BUILD_DIR"

# Folder yang akan dijadikan system profile
INCLUDE_DIRS=(
    prompts
    memory
    routing
    discord
)

echo "# AI Council Combined Profile" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "> Auto-generated. DO NOT EDIT." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

for dir in "${INCLUDE_DIRS[@]}"; do
    if [[ ! -d "$ROOT_DIR/$dir" ]]; then
        continue
    fi

    find "$ROOT_DIR/$dir" \
        -type f \
        -name "*.md" \
        | sort \
        | while read -r file; do

            rel="${file#$ROOT_DIR/}"

            echo "" >> "$OUTPUT_FILE"
            echo "---" >> "$OUTPUT_FILE"
            echo "" >> "$OUTPUT_FILE"
            echo "# FILE: $rel" >> "$OUTPUT_FILE"
            echo "" >> "$OUTPUT_FILE"

            cat "$file" >> "$OUTPUT_FILE"

            echo "" >> "$OUTPUT_FILE"
        done
done

echo ""
echo "=========================================="
echo "Profile generated:"
echo "$OUTPUT_FILE"
echo "=========================================="

wc -l "$OUTPUT_FILE"
