#!/usr/bin/env bash
set -e

BACKUP_FILENAME="mongo.gz"

cd /srv/backups

if [[ -n "${MONGO_INITDB_ROOT_USERNAME}" ]] && [[ -n "${MONGO_INITDB_ROOT_PASSWORD}" ]]; then
    mongodump --archive="${BACKUP_FILENAME}" --gzip --username="${MONGO_INITDB_ROOT_USERNAME}" --password="${MONGO_INITDB_ROOT_PASSWORD}"
else
    mongodump --archive="${BACKUP_FILENAME}" --gzip
fi

echo "Backup file \`${BACKUP_FILENAME}\` created successfully."
