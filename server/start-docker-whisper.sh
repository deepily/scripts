#! /bin/sh

if [ $# -eq 2 ]; then

  echo "Starting docker whisper on port [$1] w/ image version [$2] from [$(pwd)]..."
  echo ""
  echo "Using OPENAI_API_KEY [$OPENAI_API_KEY]"
  echo ""
  echo "After Docker starts, run this: /var/genie-in-the-box/run-flask-whisper.sh"

  #  set RUN_THIS=/var/genie-in-the-box/run-flask-whisper.sh
  #  set RUN_THIS=bash

  # ¡OJO! I removed 'bash' as the default startup command to run as the very last argument in this very long invocation.
  docker container run -e OPENAI_API_KEY="$OPENAI_API_KEY" -e CUDA_DEVICE_ORDER=PCI_BUS_ID -e CUDA_VISIBLE_DEVICES=0,1 -e DOCKER_IMAGE_VERSION="$2" -it --volume /media/sdb/include/www.deepily.ai/projects:/var --publish 127.0.0.1:"$1":"$1"/tcp --runtime=nvidia --gpus all riqui/whisper:"$2"

else

  echo "Usage: ./start-docker-whisper.sh {PORT} {DOCKER_IMAGE_VERSION}, e.g.: './start-docker-whisper.sh 7999 0.1.0'"

fi
