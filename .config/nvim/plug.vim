call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdcommenter'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'

Plug 'airblade/vim-gitgutter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jparise/vim-graphql'

Plug 'HerringtonDarkholme/yats.vim'

Plug 'chemzqm/vim-jsx-improve'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()
