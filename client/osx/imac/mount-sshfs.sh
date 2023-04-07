#! /bin/bash

if [ $# -eq 1 ]; then

  echo "Mounting projects filesystem for [$1]"
  sshfs rruiz@"$1":/media/sdb/include/www.deepily.ai/projects ~/Projects/projects-sshfs

else

  echo "Usage: ./mount-sshfs.sh {IP}, e.g.: './mount-sshfs.sh 192.168.0.19'"

fi
