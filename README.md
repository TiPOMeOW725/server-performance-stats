# Server Performance Stats Script

## Project overview
A simple Bash script that analyzes basic performance statistics on any Linux server.
It fetches and displays key metrics using standard Linux commands like top, free, df, and ps.
This project is based on the challenge from the DevOps roadmap on roadmap.sh.
Link to the challenge: https://roadmap.sh/projects/server-stats
 
## Project requirements
Requirements
You are required to write a script server-stats.sh that can analyse basic server performance stats. You should be able to run the script on any Linux server and it should give you the following stats:

Total CPU usage

Total memory usage (Free vs Used including percentage)

Total disk usage (Free vs Used including percentage)

Top 5 processes by CPU usage

Top 5 processes by memory usage

Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.

## Features
The script provides the required stats as follows:

Total CPU Usage: Calculated via top snapshot.
Total Memory Usage: Fetched from free, showing free vs used in MiB with percentages.
Total Disk Usage: From df, targeting the root filesystem (/), with total size, used/free space, and percentages.
Top 5 Processes by CPU Usage: Sorted via ps, listing PID, user, %CPU, command, and time.
Top 5 Processes by Memory Usage: Sorted via ps, listing PID, user, %MEM, command, and time.

## Installation
No installation is required beyond having a Linux environment with standard utilities (top, free, df, ps, awk, and basic shell tools). Tested on Ubuntu 24.04.3 LTS system, but should work on most Linux distributions.

Clone the repository:
```
   git clone https://github.com/yourusername/server-performance-stats.git
   cd server-performance-stats
```
Make the script executable:
```
   chmod +x server-stats.sh
```
Usage
Run the script directly on a Linux server:
```
./server-stats.sh
```
No arguments are needed.
The script outputs the stats to the console, separated by dashed lines for readability.
Run it as a regular user, no sudo required.
Note: This script assumes the root filesystem (/) is the primary disk to monitor. For multi-disk setups, you may need to modify the df command to target specific mounts.
