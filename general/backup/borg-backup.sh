#!/bin/bash

export BORG_REPO='borg@finoglio.2li.local:/mnt/sda/backup/python'
export BORG_PASSPHRASE=Password

borg create -v --stats ::$(hostname)_$(date -I) /home/andreas/

borg prune --prefix $(hostname)_201 --keep-daily=7 --keep-weekly=4 --keep-monthly=12 --keep-yearly=1
