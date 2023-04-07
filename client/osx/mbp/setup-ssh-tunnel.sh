#! /bin/bash

if [ $# -eq 2 ]; then

  echo "Starting SSH tunnel to [$1] on port [$2]"
  ssh -L "$2":localhost:"$2" rruiz@"$1"

else

  echo "Usage: ./setup-ssh-tunnel.sh {IP} {PORT}, e.g.: './setup-ssh-tunnel.sh 192.168.0.19 7999'"

fi

