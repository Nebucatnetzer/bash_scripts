#!/bin/bash

## creating backup folder
mkdir /home/nebucatnetzer/backup

## creating mysql backup
echo "Enter your MySQL password"
mysqldump -u root -p --all-databases > /home/nebucatnetzer/backup/all_databases.sql

## backing up the www folder
rsync -a --delete /var/www /home/nebucatnetzer/backup &> /dev/null

## compressing everything into an date stamped archive
tar -cvzf /home/nebucatnetzer/server_$(date +%Y-%m-%d).tar.gz --directory=/home/nebucatnetzer/backup/ .

## changing ownership
chown nebucatnetzer:nebucatnetzer server_*tar.gz

## removing the files
rm -rf /home/nebucatnetzer/backup
