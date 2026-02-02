#!/bin/bash

# Nginx Log Analyzer
# This script analyzes nginx access logs

LOGFILE="logfile.txt"

echo "==============================="
echo " Nginx Log Analysis"
echo " analyzing file: $LOGFILE"
echo "==============================="

# Top 5 IP addresses with the most requests
echo " Top 5 IP addresses with the most requests:"
awk '{print $1}' $LOGFILE | sort | uniq -c | sort -rn | head -5
echo "==============================="

# Top 5 most requested paths
echo " Top 5 most requested paths:"
awk '{print $7}' $LOGFILE | sort | uniq -c | sort -rn | head -5
echo "==============================="

# Top 5 response status codes
echo " Top 5 response status codes:"
awk '{print $9}' $LOGFILE | grep -v '"-"' | sort | uniq -c | sort -rn | head -5
echo "==============================="

# Top 5 user agents
echo " Top 5 user agents:"
awk -F'"' '{print $6}' $LOGFILE | grep -v '^-$' | sort | uniq -c | sort -rn | head -5
echo "==============================="
