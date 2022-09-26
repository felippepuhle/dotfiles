# !/bin/bash

rm ~/.zshrc.bkp
mv ~/.zshrc ~/.zshrc.bkp
cp ./.zshrc ~/.zshrc

rm -rf ~/.config/nvim/lua/user.bkp
mv ~/.config/nvim/lua/user ~/.config/nvim/lua/user.bkp
cp -a ./.config/nvim/lua/user ~/.config/nvim/lua/user

rm -rf ~/.tmux.conf.bkp
rm -rf ~/.config/tmuxinator.bkp
mv ~/.tmux.conf ~/.tmux.conf.bkp
mv ~/.config/tmuxinator ~/.config/tmuxinator.bkp
cp ./.tmux.conf ~/.tmux.conf
cp -a ./.config/tmuxinator ~/.config/tmuxinator
