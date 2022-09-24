# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"

# tmuxinator
alias mux=tmuxinator

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Projects
alias projects="cd ~/Projects"
alias persimmon="cd ~/Projects/persimmon"
alias patio="cd ~/Projects/Patio"
alias backend="cd ~/Projects/Patio/backend"
alias chat-web="cd ~/Projects/Patio/chat-web"
alias chat-mobile="cd ~/Projects/Patio/chat-mobile"
