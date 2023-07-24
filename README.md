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
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

Install AstroNvim dependencies

```
brew install ripgrep
brew install lazygit
```

## tmux and tmuxinator

Install tmux and tmuxinator:

```
brew install tmux
brew install tmuxinator
```

Install the plugin manager:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install plugins:

```
prefix + I
```
