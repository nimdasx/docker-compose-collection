#!/bin/sh

WEBHOOK_URL="${DISCORD_WEBHOOK_URL}"
SERVICE_NAME="${WATCH_SERVICE:-web}"
APP_NAME="${APP_NAME:-ABCTERSERAHDIRIMU}"
TMPFILE="/tmp/logcheck.txt"
ERRFILE="/tmp/errors.txt"
LAST_HASH_FILE="/tmp/last_error_hash"
COOLDOWN_FILE="/tmp/last_alert_time"
COOLDOWN_SECONDS=60

if [ -z "$WEBHOOK_URL" ]; then
    echo "DISCORD_WEBHOOK_URL not set, sleeping forever."
    sleep infinity
fi

send_discord() {
    payload=$(printf '{"content":"%s"}' "$1")
    curl -s -H "Content-Type: application/json" -d "$payload" "$WEBHOOK_URL" > /dev/null 2>&1
}

echo "Log watcher started. Polling service ${SERVICE_NAME} every 5s (cooldown: ${COOLDOWN_SECONDS}s)..."

while true; do
    CONTAINER_ID=$(docker ps -q -f "label=com.docker.compose.service=${SERVICE_NAME}" | head -1)

    if [ -z "$CONTAINER_ID" ]; then
        sleep 5
        continue
    fi

    docker logs --since=10s "$CONTAINER_ID" > "$TMPFILE" 2>&1
    grep "Fatal error\|TypeError\|ParseError\|Uncaught" "$TMPFILE" | sed 's/.*NOTICE: PHP message: //' | sort -u | head -5 > "$ERRFILE"

    if [ -s "$ERRFILE" ]; then
        current_hash=$(cat "$ERRFILE" | md5sum | cut -d' ' -f1)
        last_hash=$(cat "$LAST_HASH_FILE" 2>/dev/null)
        last_time=$(cat "$COOLDOWN_FILE" 2>/dev/null || echo 0)
        now=$(date +%s)
        elapsed=$((now - last_time))

        if [ "$current_hash" != "$last_hash" ] || [ "$elapsed" -ge "$COOLDOWN_SECONDS" ]; then
            timestamp=$(date +%Y-%m-%dT%H:%M:%S)
            escaped=$(cat "$ERRFILE" | sed 's/"/\\"/g' | tr '\n' ' ' | cut -c1-1500)
            send_discord "🚨 **[${APP_NAME}]** PHP Error at ${timestamp}\\n\`\`\`${escaped}\`\`\`"
            echo "$current_hash" > "$LAST_HASH_FILE"
            echo "$now" > "$COOLDOWN_FILE"
            echo "Sent alert at ${timestamp}"
        fi
    fi

    sleep 5
done
