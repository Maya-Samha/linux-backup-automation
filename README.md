# Linux Backup Automation Project

## Overview

This project is a practical Linux based backup and automation system built using Bash scripting.
The goal was not only to create backups, but also to simulate how real servers are managed in terms of access control, automation, and system reliability.

The system automatically>
+ Creates backups with timestamps
+ Stores them in a structured way
+ Logs all operations 
+ Keeps only the latest backups (auto cleanup)
+ Limits log file size

## Technologies Used

+ Linux (Ubuntu Server)
+ Bash scripting 
+ Cron jobs
+ Basic Linux commands (cp, ls, tail, chmod, chown, etc.)

## Project Structure

- project/
  - data/ (Original data)
  - backups/ (Backup copies)
  - logs/ (Log files)
  - scripts/
    - backup.sh

## Access and Permissions

Part of this project included working with:
+ Users and groups
+ File ownership
+ Permissions (read, write, execute)

Different access levels were tested to control who can read or modify files, simulating a real server environment.

## How It Works

+ A timestamp is generated for each backup
+ The data/ folder is copied into backups/
+ Each operation is logged
+ Old backups are removed automatically 
+ The log file is cleaned to prevent unlimited growth

## Backup Management

+ Only the **latest 3 backups** are kept
+ Older backups are deleted automatically

## Logging

All operations are recorded in: 

logs/backup.log

Each run logs:
+ Start of backup
+ Result (success/failure)
+ Cleanup actions

The log file is also limited to the last 20 lines to avoid growing indefinitely.

## Automation

The script runs automatically using cron: * * * * * /home/projectuser/project/scripts/backup.sh

## What I Learned

+ Linux file permissions and ownership
+ Users and groups management
+ Writing and structuring Bash scripts
+ Automating tasks using cron jobs
+ Logging and debugging
+ Designing a simple backup system with retention

## Future Improvements

+ Compress backups (tar.gz)
+ Add error notifications
+ Run the system inside Docker

## Author

This project was built as part of learning Linux system administration and basic DevOps concepts.

