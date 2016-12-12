#!/usr/bin/env python3
import os
import borg_variables
import sys
import configparser

chosen_activity = 100

# Setting the environment variables
os.environ['BORG_REPO'] = str(borg_variables.repository)
os.environ['BORG_PASSPHRASE'] = str(borg_variables.password)

# The main menu starts there
while chosen_activity != 0:
    print("What would you like to do?")
    # Start the chosen activity and go back to the activity selector.
    print("1: List Backups, 2: Show archive details, 3: Mount Archive, 0: Exit")
    try:
        chosen_activity = int(input("Choose the desired activity:"))
        if chosen_activity == 1:
            # prints all the archives in the repository and lists them with
            # less
            os.system('borg list | less')
        if chosen_activity == 2:
            # Displays all the information related to the archive name the user 
            # enters
            archive_name = input("Please enter the archive name: ")
            os.system('borg info ::' + archive_name)
        if chosen_activity == 3:
            # mounts a chosen archive to /tmp/archive name
            archive_name = input("Please enter the archive name: ")
            mount_point = "/tmp/" + archive_name
            if not os.path.exists(mount_point):
                    os.makedirs(mount_point)
            os.system('borg mount  ::' + archive_name + " " + mount_point)
        elif chosen_activity == 0:
            print()
    except ValueError:
        print("test")
