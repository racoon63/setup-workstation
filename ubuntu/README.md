# Setup Ubuntu Desktop Workstation

## Useful links

* [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [powerline fonts](https://github.com/powerline/fonts)
* [vscode](https://github.com/racoon63/vscode)

## Quick installation

If you just want to get started with your work, run:

```bash
wget -q -O - https://raw.githubusercontent.com/racoon63/setup-workstation/master/ubuntu/install.sh | bash
```

and reboot your workstation when the provisioning is done. Have fun!

## Manually

When you want to prepare your freshly installed workstation or if you want to keep your workstation
updated in a particular state, then run the `install-ansible.sh` script:

```bash
bash install-ansible.sh
# or
./install-ansible.sh
```

Afterwards install vscode according to the instructions in the repository that is linked under [Useful links](#useful-links).
When this is done you can continue by running the `workstation.yaml` playbook:

```bash
ansible-playbook -i 'localhost,' workstation.yml --ask-become-pass 2>&1 | tee -a provision.log
```
