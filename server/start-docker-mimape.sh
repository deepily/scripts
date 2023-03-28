#! /bin/sh

if [ $# -eq 2 ]; then

  echo "Starting docker mimape w/ image version [$2] from [$(pwd)]..."

  docker container run -e CUDA_DEVICE_ORDER=PCI_BUS_ID -e CUDA_VISIBLE_DEVICES=0,1 -e DOCKER_IMAGE_VERSION="$2" -it --volume ~/projects:/var --publish 127.0.0.1:"$1":"$1"/tcp --gpus all riqui/mimape:"$2" bash

else

  echo "Usage: ./start-docker-mimape.sh {PORT} {DOCKER_IMAGE_VERSION}, e.g.: './start-docker-mimape.sh 8000 0.1.0'"

fi
