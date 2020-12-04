" extensions
let g:coc_global_extensions = [
  \ 'coc-fzf-preview',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-stylelint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-highlight',
  \ 'coc-yank',
  \ 'coc-react-refactor',
  \ ]

" signs
let g:coc_error_sign = '❌'
let g:coc_warning_sign = '⚠️'

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Support color highlight
set termguicolors

" Color navigation
nmap <silent> pc :call CocAction('pickColor')<CR> 
nmap <silent> cp :call CocAction('colorPresentation')<CR> 
