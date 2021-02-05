# Setup Ubuntu Desktop Workstation

## Useful links

* [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [powerline fonts](https://github.com/powerline/fonts)
* [vscode](https://github.com/racoon63/vscode)

## Overview

The following steps will be performed while provisioning your workstation:

Installs the following packages and tools:

* `ansible`
* `apt-transport-https`
* `aptitude`
* `code` (Visual Studio Code)
* `curl`
* `docker`
* `git`
* `go` (Version: 1.15.7)
* `chrome` (Google Chrome)
* `gcloud` (Google Cloud SDK)
* `helm` (Version 3)
* `htop`
* `jq`
* `keepass2`
* `kubectl`
* `minikube`
* `mlocate`
* `pip3`
* `fonts-powerline` (Powerline Fonts)
* `python3`
* `terraform`
* `vim`
* `wget`
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
