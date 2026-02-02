#!/bin/bash

# Script to collect and display server performance statistics
echo "==============================="
echo " Server Performance Statistics "
echo "==============================="

# CPU Usage
top -bn1 | grep "Cpu(s)" | awk '{print " Total CPU Usage: " 100 - $8 "%"}'
echo "================================"

# Memory Usage
echo " Memory Usage:" 
free | grep "Mem:" | awk '{printf " Total: %.2fGi, Used: %.2fGi, Free: %.2fGi (%.2f%% used)\n", $2/1024/1024, $3/1024/1024, $4/1024/1024, $3/$2*100}'
echo "================================"

# Disk Usage
echo " Disk Usage:"
df -h | grep "/$" | awk '{printf " Total: %s, Used: %s, Free: %s (%s used)\n", $2, $3, $4, $5}'
echo "================================"

# Top 5 Memory Consuming Processes
echo " Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -6 | awk '{printf " %-10s %-8s %-8s %s\n", $2, $3, $4, $11}'
echo "================================"

# Top 5 CPU Consuming Processes
echo " Top 5 Processes by CPU Usage:"
ps aux --sort=-%cpu | head -6 | awk '{printf " %-10s %-8s %-8s %s\n", $2, $3, $4, $11}'
echo "================================"

