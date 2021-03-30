" leader
let mapleader = ","

" vimscript
source ~/.config/nvim/plug.vim
source ~/.config/nvim/settings.vim

" lua
lua require("config.colorizer")
lua require("config.compe")
lua require("config.lualine")
lua require("config.treesitter")

lua require("lsp.config")
