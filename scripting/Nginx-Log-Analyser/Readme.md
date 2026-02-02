# Nginx Log Analyser

This project is a simple command-line tool to analyze Nginx access logs. It's designed to practice basic shell scripting skills.

A project from Roadmap.sh : https://roadmap.sh/projects/nginx-log-analyser

## Project Goal

The goal of this project is to create a shell script that reads an Nginx log file and provides specific information about the requests.

## Requirements

Create a shell script that reads the log file and provides the following information from the logfile:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## Usage

1. Clone or download this repository to your local machine.

2. Make the script executable by running the following command in your terminal:

   ```
   chmod +x analyze.sh
   ```

3. Run the script by providing the path to your Nginx log file:

   ```
   ./analyze.sh
   ```

### Note

Make sure you have the logfile.txt

## Output

The script will produce output similar to this:

```
===============================
 Nginx Log Analysis
 analyzing file: logfile.txt
===============================
 Top 5 IP addresses with the most requests:
   1087 178.128.94.113
   1087 142.93.136.176
   1087 138.68.248.85
   1086 159.89.185.30
    277 86.134.118.70
===============================
 Top 5 most requested paths:
   4560 /v1-health
    270 /
    232 /v1-me
    127 /v1-list-workspaces
     75 /v1-list-timezone-teams
===============================
 Top 5 response status codes:
   5740 200
    937 404
    621 304
    192 400
     30 166
===============================
 Top 5 user agents:
   4347 DigitalOcean Uptime Probe 0.22.0 (https://digitalocean.com)
    513 Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36
    332 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36
    294 Custom-AsyncHttpClient
    282 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36
===============================
```