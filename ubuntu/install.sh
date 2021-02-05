#!/usr/bin/env bash

# Usage:
# wget -q -O - https://raw.githubusercontent.com/racoon63/setup-workstation/master/ubuntu/install.sh | bash

set -ex

# Update and upgrade workstation
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install python3 to install ansible in the next step
sudo apt install -y python3 \
                    python3-pip \
                    git

pip3 install --user ansible

# Add ansible bin to PATH
export "PATH=$PATH:$HOME/.local/bin"

# Clone respository
if [[ ! -d /tmp/setup-workstation ]]
then
    git clone --progress https://github.com/racoon63/setup-workstation.git /tmp/setup-workstation
fi

# Switch to workdir
cd /tmp/setup-workstation/ubuntu

# Provision workstation
ansible-playbook -i 'localhost,' workstation.yml --ask-become-pass 2>&1 | tee -a provision.log

rm -rf /tmp/setup-workstation