# Projects
alias projects="cd ~/Projects"
alias patio="cd ~/Projects/patio"
alias patio-web="cd ~/Projects/patio/PatioWeb"

# VScode
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH="${PATH}:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools"
#alias emulator="$ANDROID_HOME/tools/emulator"
alias android-emulator="~/Library/Android/sdk/tools/emulator -avd $(~/Library/Android/sdk/tools/emulator -list-avds | head -n 1)"

# ImageMagick
export PATH=${PATH}:/usr/local/Cellar/imagemagick/7.0.7-11/bin

# nodenv
eval "$(nodenv init -)"

# tmuxinator
alias mux=tmuxinator
