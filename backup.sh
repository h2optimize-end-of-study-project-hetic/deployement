#!/bin/bash
set -e

GIT_REPO_DIR="/etc/h2optimize/deployement"
BRANCH="main"
TOKEN_FILE="/etc/h2optimize/.github_token"
REMOTE_URL="https://github.com/h2optimize-end-of-study-project-hetic/deployement.git"

GITHUB_TOKEN=$(cat $TOKEN_FILE)

cd "$GIT_REPO_DIR"

git remote set-url origin "https://${GITHUB_TOKEN}@github.com/h2optimize-end-of-study-project-hetic/deployement.git"
git pull origin $BRANCH
git add .
DATE=$(date +"%Y-%m-%d %H:%M:%S")
git commit -m "Backup automatique $DATE" || echo "Rien à committer"
git push origin $BRANCH

git remote set-url origin "$REMOTE_URL"