#!/bin/bash

/usr/bin/ssh -i /home/andreas/.ssh/control borg@owncloud.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control borg@ttrss.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control borg@wiki.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control borg@cms.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control -p 2323 andreas@python.2li.local '/home/borg/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control borg@forum.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh -i /home/andreas/.ssh/control borg@git.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh borg@project.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh borg@mariadb.2li.local '~/backup-to-fileserver.sh'
/usr/bin/ssh borg@fileserver.2li.local '~/backup-to-fileserver.sh'
