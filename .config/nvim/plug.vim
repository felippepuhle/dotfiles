call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'romgrk/barbar.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'markonm/traces.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'machakann/vim-highlightedyank'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'preservim/nerdcommenter'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-writer.nvim'
Plug 'junegunn/fzf', { 'do': './install --bin' }

Plug 'brooth/far.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ruanyl/vim-gh-line'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'

call plug#end()
