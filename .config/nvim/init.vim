source ~/.config/nvim/plug.vim
source ~/.config/nvim/settings.vim

lua require("config.lualine")
lua require("config.treesitter")

lua require("lsp.completion")
lua require("lsp.config")
