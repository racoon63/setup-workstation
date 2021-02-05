# Setup Ubuntu Desktop Workstation

## Useful links

* [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [powerline fonts](https://github.com/powerline/fonts)
* [vscode](https://github.com/racoon63/vscode)

## Overview

The following steps will be performed while provisioning your workstation:

Installs the following packages and tools:

* `python3`
* `pip3`
* `git`
* `ansible`
* `apt-transport-https`
* `aptitude`
* `curl`
* `git`
* `htop`
* `jq`
* `keepass2`
* `mlocate`
* `vim`
* `wget`
* `code`
* `Google Chrome`
* `Google Cloud SDK`
* `Terraform`
* `zsh`
* `kubectl`
* `Docker`
* `Helm v3`
* `Minikube`
* `Ansible`
* `Go` (Version: 1.15.7)
* `Powerline Fonts`
* `zsh`

Installs following Snaps:

* Spotify

Installs others:

* oh-my-zsh plugins
  * thefuck
  * zsh-autosuggestions
  * zsh-syntax-highlighting
* MesloLGS NF fonts

## Quick installation

If you just want to get started with your work or update your workstation, run:

```bash
wget -q -O - https://raw.githubusercontent.com/racoon63/setup-workstation/master/ubuntu/install.sh | bash
```

and reboot your workstation when the provisioning is done. Have fun!
