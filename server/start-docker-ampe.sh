#! /bin/sh

if [ $# -eq 2 ]; then

  echo "Starting docker w/ image version [$2] from [`pwd`]..."

  docker container run -e CUDA_DEVICE_ORDER=PCI_BUS_ID -e CUDA_VISIBLE_DEVICES=0 -e DOCKER_IMAGE_VERSION="$2" -it --volume ~/projects:/var --publish 127.0.0.1:"$1":"$1"/tcp --publish 127.0.0.1:2375:2375/tcp riqui/ampe:"$2" sh

else

  echo "Usage: ./start-docker.sh {PORT} {DOCKER_IMAGE_VERSION}, e.g.: './start-docker-v1.2.sh 8000 0.5.0'"

fi
