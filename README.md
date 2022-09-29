# dotfiles

## terminal

Install Zsh plugins

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Install Alacritty

```
brew install --cask alacritty
```

Install starship

```
curl -sS https://starship.rs/install.sh | sh
```

Install SFMono Nerd Font

```
brew tap epk/epk
brew install --cask font-sf-mono-nerd-font
```

## nvim

Install nvim

```
brew install neovim
```

Install AstroNvim

```
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
```

Install AstroNvim dependencies

```
brew install ripgrep
brew install lazygit
```

Install LSP dependencies

```
npm install -g eslint_d
npm install -g @fsouza/prettierd
```

Inside nvim, install TS parsers and LSPs

```
:TSInstall dockerfile dot gitattributes gitignore graphql lua regex typescript
:LspInstall sumneko_lua graphql tsserver
```

## tmux and tmuxinator

Install tmux and tmuxinator:

```
brew install tmux
brew install tmuxinator
```

Install Powerline

```
pip3 install powerline-status
```

Update `tmux.colorscheme` to `solarized` inside `/usr/local/lib/python3.9/site-packages/powerline/config_files/config.json` for better tmux visual

## Window Managament

Install yabai and skhd

```
brew install koekeishiya/formulae/yabai koekeishiya/formulae/skhd
brew services start yabai
brew services start skhd
```

## hasura

To disable auto-update check on the CLI, set `"show_update_notification": false` in `~/.hasura/config.json`
