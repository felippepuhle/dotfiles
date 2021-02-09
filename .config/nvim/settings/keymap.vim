" edit configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" reload vim configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" save
nmap <Leader>w :w<return>

" clear highlighting on escape in normal mode
nmap <esc><esc> :noh<return>

" yank the entire word
nmap <leader>yw yiww

" overwrite word (replace a word with what's in the yank buffer)
nnoremap <leader>ow "_diwhp

" 0 should go to the first character rather than the beginning of the line
nnoremap 0 ^
nnoremap ^ 0

" surround word with double quotes
map <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" surround word with single quotes
map <leader>' ysiw'
vmap <leader>' c'<C-R>"'<ESC>

" surround word with parens
map <leader>( ysiw(
map <leader>) ysiw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" surround word with brackets
map <leader>] ysiw]
map <leader>[ ysiw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" surround word with braces
map <leader>} ysiw}
map <leader>{ ysiw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>
