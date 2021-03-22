#!/usr/bin/env bash
set -e

BACKUP_FILENAME="$1"
if [ -z "$BACKUP_FILENAME" ]; then
    BACKUP_FILENAME="redis.gz"
fi

gzip -c /data/enketo-main.rdb > ${BACKUP_FILENAME}

echo "Backup file \`${BACKUP_FILENAME}\` created successfully."
