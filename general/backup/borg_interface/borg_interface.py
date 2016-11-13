#!/usr/bin/env python3
import os
import borg_variables
import sys

# Setting the environment variables
os.environ['BORG_REPO'] = str(borg_variables.repository)
os.environ['BORG_PASSPHRASE'] = str(borg_variables.password)

print("What would you like to do?")
# Start the chosen activity and go back to the activity selector.
print("1: List Backups, 2: Show archive details, 0: Exit")
try:
    chosen_activity = int(input("Choose the desired activity:"))
    if chosen_activity == 1:
        os.system('borg list')
    if chosen_activity == 2:
        archive_name = input("Please enter the archive name ")
        os.system('borg info ::' + archive_name)
    elif chosen_activity == 0:
            sys.exit()
except ValueError:
    print("test")
