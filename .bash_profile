# Projects
alias projects="cd ~/Projects"

# HelloMD
alias hellomd="cd ~/Projects/hellomd"
alias hellomd-native="cd ~/Projects/hellomd/native"

# Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH="${PATH}:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools"
#alias emulator="$ANDROID_HOME/tools/emulator"
alias android-emulator="~/Library/Android/sdk/tools/emulator -avd $(~/Library/Android/sdk/tools/emulator -list-avds | head -n 1)"

# ImageMagick
export PATH=${PATH}:/usr/local/Cellar/imagemagick/7.0.7-11/bin

# nodenv
eval "$(nodenv init -)"

# fzfz
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# tmuxinator
alias mux=tmuxinator
