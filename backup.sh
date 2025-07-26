#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_DIR="/etc/h2optimize/deployement/backup"
FILENAME="postgres_recorded_backup_$DATE.sql"
CONTAINER_NAME="postgres_prod"
GIT_REPO_DIR="/etc/h2optimize/deployement"
BRANCH_NAME="main"
GIT_ASKPASS_SCRIPT="/etc/h2optimize/askpass.sh"
GIT_USERNAME="x-access-token"
GIT_REPO_URL="https://$GIT_USERNAME@github.com/h2optimize-end-of-study-project-hetic/deployement.git"

mkdir -p "$BACKUP_DIR"
docker exec "$CONTAINER_NAME" pg_dump -U admin -d recorded -F p > "$BACKUP_DIR/$FILENAME"
cp "$BACKUP_DIR/$FILENAME" "$GIT_REPO_DIR/backup"
cp "$BACKUP_DIR/$FILENAME" "$GIT_REPO_DIR/backup"

cd "$GIT_REPO_DIR" || exit 1


git remote set-url origin "$GIT_REPO_URL"
export GIT_ASKPASS="$GIT_ASKPASS_SCRIPT"


git add "backup/$FILENAME"
git commit -m "Backup PostgreSQL du $DATE"
git push origin "$BRANCH_NAME"


