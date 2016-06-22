#!/bin/bash

export BORG_REPO='borg@192.168.1.1:/mnt/sda/backup/python'
export BORG_PASSPHRASE=Password

borg create -v --stats ::$(hostusename)_$(date +%Y-%m-%d) /home/user/

borg prune --prefix $(hostname)_201* --keep-daily=7 --keep-weekly=4 --keep-monthly=12 --keep-yearly=1
