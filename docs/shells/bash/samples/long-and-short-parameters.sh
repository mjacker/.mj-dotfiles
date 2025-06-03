#!/bin/bash
set -e

# Default: don't remove volumes
REMOVE_VOLUMES=false

# Parse flags
while getopts "v" opt; do
  case $opt in
    v)
      REMOVE_VOLUMES=true
      ;;
    *)
      echo "Usage: $0 [-v]"
      exit 1
      ;;
  esac
done

if [ "$REMOVE_VOLUMES" = true ]; then
  echo "🧹 Stopping development and removing volumes..."
  docker compose --env-file .env.development -f docker-compose-development.yaml -p dev down -v
else
  echo "📦 Stopping development (volumes retained)..."
  docker compose --env-file .env.development -f docker-compose-development.yaml -p dev down
fi
