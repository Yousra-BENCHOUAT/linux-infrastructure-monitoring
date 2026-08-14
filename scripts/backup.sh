#!/bin/bash

DATE=$(date '+%Y-%m-%d_%H-%M-%S')
BACKUP_DIR="/opt/company/backups"
REMOTE="yousra@linux-backup:/opt/company/backups"
SSH_KEY="$HOME/.ssh/id_ed25519"

mkdir -p /tmp/company-backup

tar -czf "/tmp/company-backup/company-$DATE.tar.gz" \
    /opt/company/app \
    /opt/company/logs

scp -i "$SSH_KEY" \
    -o PreferredAuthentications=publickey \
    -o PasswordAuthentication=no \
    "/tmp/company-backup/company-$DATE.tar.gz" "$REMOTE/"

if [ $? -eq 0 ]; then
    echo "$(date): Backup $DATE envoyé avec succès" >> /opt/company/logs/backup.log
else
    echo "$(date): ERREUR lors du backup $DATE" >> /opt/company/logs/backup.log
fi

ssh -i "$SSH_KEY" \
    -o PreferredAuthentications=publickey \
    -o PasswordAuthentication=no \
    yousra@linux-backup \
    'ls -1 /opt/company/backups/company-*.tar.gz | tail -n +8 | xargs -r rm -f'

rm -rf /tmp/company-backup
