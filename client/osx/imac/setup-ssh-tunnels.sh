#! /bin/bash

# Currently setting up three different ports

P1=8080
P2=7999
P3=5002

if [ $# -eq 1 ]; then

  echo "Starting SSH tunnel to [$1] on ports [$P1,$P2,$P3]"
  ssh -L "$P1":localhost:"$P1" -L "$P2":localhost:"$P2"  -L "$P3":localhost:"$P3" rruiz@"$1"

else

  echo "Usage: ./setup-ssh-tunnels.sh {IP}, e.g.: './setup-ssh-tunnels.sh 192.168.0.19'"

fi

