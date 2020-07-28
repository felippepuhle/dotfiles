let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeWinSize=40

function ToggleNERDTree()
  if &filetype == 'nerdtree'
    :NERDTreeClose
  else
    if bufname("%") == ""
      :NERDTree
    else
      :NERDTreeFind
    endif
  endif
endfunction

map <C-n> :call ToggleNERDTree()<CR>
