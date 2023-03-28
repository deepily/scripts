#! /bin/sh

if [ $# -eq 2 ]; then

  echo "Starting docker trax w/ image version [$2] from [$(pwd)]..."

  docker container run -e CUDA_DEVICE_ORDER=PCI_BUS_ID -e CUDA_VISIBLE_DEVICES=0,1 -e DOCKER_IMAGE_VERSION="$2" -it --volume /media/sdb/include/www.deepily.ai/projects:/var --publish 127.0.0.1:"$1":"$1"/tcp --runtime=nvidia --gpus all riqui/trax:"$2" bash

else

  echo "Usage: ./start-docker-trax.sh {PORT} {DOCKER_IMAGE_VERSION}, e.g.: './start-docker-trax.sh 8000 0.1.0'"

fi
