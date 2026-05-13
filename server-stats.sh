#!/bin/bash

echo "===== SERVER PERFORMANCE STATS ====="

echo ""
echo "Total CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Total Memory Usage:"
free -h

echo ""
echo "Total Disk Usage:"
df -h /

echo ""
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

echo ""
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Logged In Users:"
who
