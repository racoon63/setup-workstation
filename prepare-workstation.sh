#!/bin/bash

echo "### WORKSTATION SETUP ###"

echo "### Starting ssh-agent ..."
eval $(ssh-agent)

echo "### Adding ssh key to ssh-agent inventory ..."
ssh-add ~/.ssh/id_ed25519

echo "### Configure git settings ..."
git config --global user.name "Patrick Lubach"
git config --global user.email "p.lubach@goreply.de"

echo "### Cloning repositories  ..."
cd /github
git clone git@github.com:racoon63/kubernetes.git
git clone git@github.com:racoon63/setup-workstation.git
cd ~

echo "### Finished! Dropping you into shell ..."
bash