#! /bin/sh

if [ $# -eq 1 ]; then

  echo "Starting Jupiter from [`pwd`]..."
  jupyter lab --ip=0.0.0.0 --allow-root --port $1

else

  echo "Usage: ./start-jupyterlab.sh {PORT}, e.g.: './start-jupyterlab.sh 8000'"

fi
