#!/bin/bash
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
docker build -t racoon/workstation . 2>&1 | tee build.log
docker run -it --rm --name=workstation -v ~/.ssh:/root/.ssh racoon/workstation:latest