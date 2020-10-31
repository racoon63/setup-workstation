PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.local/bin

# Exports
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export LANG=en_US.UTF-8

# zshr theme
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(   
            command-not-found
            docker
            docker-compose
            git
            golang
            helm
            kubectl
            # sudo
            thefuck
            vscode
            z
            # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
            zsh-autosuggestions
            # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
            zsh-syntax-highlighting
)

# Sources / Auto-completions
source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source <(minikube completion zsh)
source <(helm completion zsh)

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias myip="curl http://ipecho.net/plain; echo"
alias pip="pip3"
