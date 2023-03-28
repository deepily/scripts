#! /bin/bash

if [ $# -eq 1 ]; then

  echo "Starting docker TTS on port [$1] from [$(pwd)]..."
  echo ""
  echo "After Docker starts, run this: /var/genie-in-the-box/run-flask-tts.sh"

  docker run --rm -it -p "$1":"$1" --gpus '"device=1"' --volume /media/sdb/include/www.deepily.ai/projects:/var --entrypoint /bin/bash ghcr.io/coqui-ai/tts

else

  echo "Usage: ./start-docker-tts.sh {PORT}, e.g.: './start-docker-tts.sh 5002'"

fi
