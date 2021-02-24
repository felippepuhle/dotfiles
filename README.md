# dotfiles

Install dependencies:

```
brew install --HEAD luajit
brew install --HEAD neovim

brew install efm-langserver

yarn global add typescript typescript-language-server
yarn global add eslint_d
yarn global add vscode-css-languageserver-bin
```

Copy the configs:

```
cp ./.bash_profile ~/.bash_profile
cp -a ./.config/nvim/. ~/.config/nvim
```
