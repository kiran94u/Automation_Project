#!/bin/bash
sudo apt update -y
sudo apt install apache2
sudo systemctl enable apache2
timestamp=$(date '+%d%m%Y-%H%M%S')
name='Ram'
s3_bucket="upgrad-ram"
sudo tar czf /tmp/${name}-httpd-logs-${timestamp}.tar.gz /var/log/apache2/*.log
aws s3 cp /tmp/${name}-httpd-logs-${timestamp}.tar.gz s3://${s3_bucket}/${name}-httpd-logs-${timestamp}.tar.gz

#Task1 Completed

