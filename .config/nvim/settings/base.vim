" colorscheme
colorscheme nord

" send all yanking/deleting ops to clipboard
set clipboard=unnamedplus

" performance / scrolling 
set lazyredraw
set ttyfast
set cursorline
set number

" enable syntax highlight just on the current buffer
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" mouse
set mouse=a

" color highlight
set termguicolors
