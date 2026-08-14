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

## 🚨 Triggers & Alerts

Custom monitoring rules were configured to detect infrastructure problems.

### Example:

CPU utilization > 80%
        ↓
Zabbix Trigger
        ↓
PROBLEM
        ↓
CPU returns to normal
        ↓
OK

Zabbix Agent availability was also tested by stopping the agent and verifying that Zabbix detected the host as unavailable.

## 📈 Zabbix Dashboard

The monitoring dashboard provides an overview of the Linux production server, including:

CPU utilization
Memory utilization
Latest monitoring data
Active problems and alerts

Screenshots are available in the screenshots/ directory.

## 🔐 Administration & Security

The project uses SSH for secure remote administration and server-to-server communication.

Key administration tasks include:

Remote server management through SSH
SSH key-based authentication
File transfer using SCP
Linux users and permissions
Service management with Systemd
Scheduled tasks with Cron

No passwords, private keys, tokens, or other secrets are stored in this repository.

## 🎯 Project Objectives

The main objectives of this project were to:

Deploy and administer Linux servers
Automate administrative tasks with Bash and Cron
Implement SSH-based server communication
Configure a backup infrastructure
Deploy centralized monitoring with Zabbix
Monitor Linux system resources
Configure monitoring triggers
Test infrastructure failure detection
Build a professional monitoring dashboard
