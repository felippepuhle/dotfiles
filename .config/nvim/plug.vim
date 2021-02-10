call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-airline'
Plug 'RRethy/vim-illuminate'
Plug 'markonm/traces.vim'
Plug 'wfxr/minimap.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jparise/vim-graphql'
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
