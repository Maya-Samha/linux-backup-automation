#!/bin/bash

set -e

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
LOG="/home/projectuser/project/logs/backup.log"
DATA_DIR="/home/projectuser/project/data"
BACKUP_DIR="/home/projectuser/project/backups"

echo "$DATE - Starting backup..." >> $LOG

	if cp -r $DATA_DIR $BACKUP_DIR/data_$DATE; then

		echo "$DATE - Backup completed" >> $LOG
	else
		echo "$DATE - ERROR: Backup failed" >> $LOG
	fi

cd $BACKUP_DIR || exit

ls -dt data_* 2>/dev/null | tail -n +4 | xargs -r rm -rf

echo "$DATE - Old backups cleaned up" >> $LOG


tail -n 20 $LOG > /home/projectuser/project/logs/backup.tmp
        mv /home/projectuser/project/logs/backup.tmp $LOG

echo "Backup done!"
