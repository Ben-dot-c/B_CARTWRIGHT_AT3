#!/bin/bash

LOG_FILE="/home/benca/AT3/logs/linux.log"

echo "[$(date)]Beginning update..." | tee -a "$LOG_FILE" 
sudo apt-get update -y && sudo apt-get upgrade -y
echo "[$(date)]Update complete." | tee -a "$LOG_FILE"
