#!/bin/bash
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')                                                                     # removes failed build images
docker build -t racoon/workstation -f Dockerfile . 2>&1 | tee build.log                                                                           # builds container with needed tools in it
docker run -d -p 127.0.0.1:80:8443 --rm --name=vscode-server -v "${HOME}/github:/vscode-server/projects" racoon/vscode-server      # starts a web based visual studio code server locally 
#firefox "localhost" &!                                                                                                              # starts firefox session with vs-code in the background
docker run -it --rm --name=workstation -v ~/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock racoon/workstation:latest  # starts built container

read -p "Do you want to terminate the vs-code server too? [Y/n]: " VS_TERMINATION                                                   # asks for vs-code server shutdown if the workstation container will be exited

if [[ $VS_TERMINATION == 'Y' || $VS_TERMINATION == 'y' || $VS_TERMINATION == '' ]]; then                                
    kill -s SIGTERM $(ps aux | grep -i "/usr/lib/firefox/firefox localhost" | head -n 1 | awk '{print $2}')
    docker stop $(docker ps | grep "vs-code" | awk '{print $1}') 2>&1 > /dev/null                                                   # terminates the vs-code server
fi
