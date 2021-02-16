let bufferline = get(g:, 'bufferline', {})

let bufferline.icons = 'both' 

" navigate between buffers
nnoremap <silent> <leader>z :BufferPrevious<CR>
nnoremap <silent> <leader>x :BufferNext<CR>

" close buffers
nnoremap <silent> <leader>cc :BufferClose<CR>
nnoremap <silent> <leader>ca :BufferCloseAllButCurrent<CR>
nnoremap <silent> <leader>cal :BufferCloseBuffersLeft<CR>
nnoremap <silent> <leader>car :BufferCloseBuffersRight<CR>

" picker
nnoremap <silent> <leader>b :BufferPick<CR>

" goto buffer
nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>
nnoremap <silent> <leader>9 :BufferLast<CR>
