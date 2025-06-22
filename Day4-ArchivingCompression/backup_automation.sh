#!/bin/bash

# Define backup source and destination
BACKUP_SRC="$HOME/backup_demo/data"
BACKUP_DEST="$HOME/backup_demo/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="data_backup_$TIMESTAMP.tar.gz"

# Create backup directory if not exists
mkdir -p $BACKUP_DEST

# Create archive with gzip compression
tar -czvf $BACKUP_DEST/$ARCHIVE_NAME $BACKUP_SRC

echo "✅ Backup created at $BACKUP_DEST/$ARCHIVE_NAME"

# Optional: Delete backups older than 7 days
find $BACKUP_DEST -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "✅ Old backups cleaned (older than 7 days)"
