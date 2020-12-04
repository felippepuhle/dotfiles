" split
set splitbelow
set splitright

" editor 
noremap <silent> <c-x> :split<CR>
noremap <silent> <c-v> :vsplit<CR>

" NERDTree 
let NERDTreeMapOpenSplit='<c-x>' 
let NERDTreeMapOpenVSplit='<c-v>' 

" fzf-preview
let g:fzf_preview_preview_key_bindings = 'ctrl-x:split,ctrl-v:vsplit'
