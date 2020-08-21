" colorscheme
colorscheme nord

" show line number
set number

" send all yanking/deleting ops to clipboard
set clipboard=unnamedplus

" don't redraw while executing macros (good performance config)
set lazyredraw

" enable syntax highlight just on the current buffer
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" split
set splitbelow
set splitright
