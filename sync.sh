# !/bin/bash

rm ./.zshrc
cp ~/.zshrc ./.zshrc

rm -rf ./config/alacritty
cp -a ~/.config/alacritty ./.config

rm -rf ./.config/nvim/lua/user
cp -a ~/.config/nvim/lua/user ./.config/nvim/lua/user

rm ./.tmux.conf
rm -rf ./.config/tmuxinator
cp  ~/.tmux.conf ./.tmux.conf
cp -a ~/.config/tmuxinator ./.config/tmuxinator
