#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
I7_HUB="/mnt/c/code/ifhub"
CONFIG="$SCRIPT_DIR/project.conf"
exec bash "$I7_HUB/tools/testing/run-walkthrough.sh" --config "$CONFIG" "$@"
