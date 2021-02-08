let g:NERDTreeWinSize=40
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'✹',
    \ 'Staged'    :'✚',
    \ 'Untracked' :'✭',
    \ 'Renamed'   :'➜',
    \ 'Unmerged'  :'═',
    \ 'Deleted'   :'✖',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
    \ }

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
