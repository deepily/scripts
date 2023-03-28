#! /bin/bash

cd $DEEPILY_PROJECTS_DIR/genie-in-the-box/docker/whisper

docker build -t whisper:0.1.0 .

docker tag whisper:0.1.0 riqui/whisper:0.1.0

# docker push riqui/whisper:0.1.0