#!/bin/bash
# This script exports all workflows from the running n8n container
# into the local ./workflows directory, making them ready for Git.

echo "Exporting all workflows from n8n..."

docker compose exec n8n n8n export:workflow --all --separate --pretty --output /home/node/workflows

echo "Export complete. Files are in the ./workflows directory."
