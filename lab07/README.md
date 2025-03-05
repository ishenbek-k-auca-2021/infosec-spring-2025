# Lab 7: Crontab in Linux

## Overview
This lab demonstrates the use of crontab in Linux to schedule tasks. The task includes a script that writes a timestamp to a file every minute and an optional Python script to send an email.

## Files in this Repository:
- `write_line.sh`: A shell script that writes a new line with the current timestamp to `file.txt`.
- `send_email.py`: A Python script (optional) that sends an email to the server owner.
- `file.txt`: A file that gets updated every minute with the timestamp by the cron job.
- `cron_jobs.txt`: Contains the cron job schedule for running `write_line.sh`.

## How to Use:
1. Edit your crontab with `crontab -e` and add the line from `cron_jobs.txt`.
2. Ensure the scripts have execution permissions using `chmod +x <script_name>`.
3. Check `file.txt` to see the updated timestamps.
