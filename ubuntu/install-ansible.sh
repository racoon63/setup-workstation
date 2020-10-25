#!/bin/bash

set -e

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install -y python3 python3-pip

pip3 install --user ansible

echo "PATH=$PATH:$HOME/.local/bin" >> $HOME/.bashrc
source $HOME/.bashrc
