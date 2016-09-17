#! /bin/bash
directory=`pwd`
cd ~/git_repos/dot_files/
git add .
git commit -m "update configs"
git push
cd $directory
