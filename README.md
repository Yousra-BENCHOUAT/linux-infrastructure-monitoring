# linux-infrastructure-monitoring
Linux system administration, backup automation and Zabbix monitoring infrastructure.
## 📌 Overview

This project demonstrates the deployment and administration of a small Linux infrastructure composed of production, backup, and monitoring servers.

The infrastructure combines Linux system administration, SSH-based communication, Bash automation, scheduled tasks with Cron, backup management, and centralized monitoring with Zabbix.

---

## 🏗️ Architecture

The infrastructure is organized around three servers:

| Server | OS | Role |
|---|---|---|
| `linux-prod` | Ubuntu 22.04 LTS | Production server |
| `linux-backup` | Linux | Backup server |
| `zabbix-server` | Debian 12 | Monitoring server |

## 🛠️ Technologies & Tools
### Operating Systems
Ubuntu 22.04 LTS
Debian 12
### System Administration
Linux
Bash
Systemd
Cron
SSH
SCP
### Backup
Bash backup scripts
TAR / GZIP
SSH / SCP
Restore testing
### Monitoring
Zabbix Server
Zabbix Agent
Zabbix Web Interface
MariaDB
Zabbix Dashboard
Triggers and alerts

## 📊 Monitoring

The linux-prod server is monitored using the Zabbix Agent.

### The monitoring includes:

CPU utilization
Memory utilization
Available memory
Swap usage
System uptime
Number of processes
CPU load
Zabbix Agent availability
Zabbix Agent connectivity
System information
