#!/bin/bash

port=${2:-8000}
host=${3:-localhost}

if test -z "$1"; then
  echo Question is required
  exit 0
fi

curl http://$host:$port/v1/chat/completions \
  -H 'Content-Type: application/json' \
  -d "{\"model\": \"Qwen/Qwen3.5-2B\", \"messages\": [{\"role\": \"user\", \"content\": \"$1\"}], \"stream\": false}" -s | python -m json.tool --no-ensure-ascii
