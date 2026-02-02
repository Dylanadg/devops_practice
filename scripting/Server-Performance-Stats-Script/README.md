# Server Performance Stats Script

## About
A bash script that analyzes and displays real-time server performance statistics. This tool provides a quick overview of system resources including CPU, memory, disk usage, and top running processes.

A project from Roadmap.sh : https://roadmap.sh/projects/server-stats

## Requirements

The script provides the following statistics:

- **Total CPU usage** - Overall CPU utilization percentage
- **Total memory usage** - Free vs Used memory with percentage
- **Total disk usage** - Free vs Used disk space with percentage
- **Top 5 processes by CPU usage** - Most CPU-intensive processes
- **Top 5 processes by memory usage** - Most memory-intensive processes

## Usage

Make the script executable and run it:

```bash
chmod +x server-stats.sh
./server-stats.sh
```

## Output Example

```
===============================
 Server Performance Statistics
===============================
 Total CPU Usage: 12.5%
================================
 Memory Usage:
 Total: 15.36Gi, Used: 12.50Gi, Free: 0.40Gi (81.50% used)
================================
 Disk Usage:
 Total: 69G, Used: 48G, Free: 18G (74% used)
================================
```
