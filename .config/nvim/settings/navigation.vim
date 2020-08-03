" navigate between buffers
nnoremap <silent> <leader>z :NERDTreeClose \| :bp<CR>
nnoremap <silent> <leader>x :NERDTreeClose \| :bn<CR>
" close current buffer
nnoremap <silent> <leader>c :bd<CR>

" disable vim-tmux-navigator default key-mappings
let g:tmux_navigator_no_mappings = 1
" use c-[hjkl] to navigate
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" tmux - enable mouse scrolling in vim instead of history buffer
set mouse=a
