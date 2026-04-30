#!/usr/bin/env bash
# Reminds you to take a break every 50 minutes via macOS notification + terminal bell.

INTERVAL=$((50 * 60))

echo "Break reminder started. You'll be notified every 50 minutes. Press Ctrl+C to stop."

while true; do
  sleep "$INTERVAL"
  osascript -e 'display notification "Time to stand up, stretch, and rest your eyes!" with title "Break Time" sound name "Glass"'
  echo -e " Take a break!"
done
