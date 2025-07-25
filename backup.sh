#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_DIR="/etc/h2optimize/deployement/backup"
FILENAME="postgres_recorded_backup_$DATE.sql"
CONTAINER_NAME="postgres_prod"
GIT_REPO_DIR="/etc/h2optimize/deployement"
BRANCH_NAME="main"

mkdir -p "$BACKUP_DIR"
docker exec "$CONTAINER_NAME" pg_dump -U admin -d recorded -F p > "$BACKUP_DIR/$FILENAME"
cp "$BACKUP_DIR/$FILENAME" "$GIT_REPO_DIR/backup"

cd "$GIT_REPO_DIR" || exit 1
git add "$FILENAME"
git commit -m "Backup PostgreSQL du $DATE"
git push origin "$BRANCH_NAME"
