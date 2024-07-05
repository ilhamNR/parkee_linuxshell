#!/bin/bash

# Memeriksa apakah dua parameter diberikan
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_location>"
    exit 1
fi

SOURCE_DIRECTORY=$1
BACKUP_LOCATION=$2

# Mendapatkan tanggal saat ini
DATE=$(date +%Y%m%d%H%M%S)

# Membuat nama file cadangan
BACKUP_FILENAME="$BACKUP_LOCATION/backup_$DATE.tar.gz"

# Membuat cadangan
tar -czf "$BACKUP_FILENAME" -C "$SOURCE_DIRECTORY" .

echo "Backup created at $BACKUP_FILENAME"
