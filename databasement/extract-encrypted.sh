#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 '<base64-key>' <file.sql.7z>"
    exit 1
fi

KEY="$1"
ARCHIVE="$2"

if [ ! -f "$ARCHIVE" ]; then
    echo "Error: file tidak ditemukan: $ARCHIVE"
    exit 1
fi

if [[ "$KEY" == base64:* ]]; then
    KEY="${KEY#base64:}"
fi

PASSWORD=$(printf '%s' "$KEY" | base64 -d | xxd -p -c 256)

echo "Extracting: $ARCHIVE"

7z x \
    -y \
    -p"$PASSWORD" \
    "$ARCHIVE"

echo "Done."