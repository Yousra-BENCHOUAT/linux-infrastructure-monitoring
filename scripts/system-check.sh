#!/bin/bash

LOG="/opt/company/logs/system-check.log"

echo "========================================" >> "$LOG"
echo "System Check - $(date)" >> "$LOG"
echo "========================================" >> "$LOG"

echo "" >> "$LOG"
echo "[SERVICE]" >> "$LOG"
systemctl is-active company-app >> "$LOG" 2>&1

echo "" >> "$LOG"
echo "[DISK]" >> "$LOG"
df -h / >> "$LOG"

echo "" >> "$LOG"
echo "[MEMORY]" >> "$LOG"
free -h >> "$LOG"

echo "" >> "$LOG"
echo "[CPU]" >> "$LOG"
uptime >> "$LOG"

echo "" >> "$LOG"
echo "[TOP PROCESSES]" >> "$LOG"
ps aux --sort=-%cpu | head -n 6 >> "$LOG"

echo "" >> "$LOG"
echo "[LOG SIZE]" >> "$LOG"
du -sh /opt/company/logs/ >> "$LOG"

echo "" >> "$LOG"
echo "Check completed." >> "$LOG"
