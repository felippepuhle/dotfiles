nnoremap <leader>ff :lua require('telescope').extensions.fzf_writer.files()<CR>
nnoremap <leader>fg :lua require('telescope').extensions.fzf_writer.staged_grep()<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let $BAT_THEME = 'Nord'

lua <<EOF
require('telescope').setup {
    extensions = {
        fzf_writer = {
            minimum_grep_characters = 2,
            minimum_files_characters = 2,

            -- Disabled by default.
            -- Will probably slow down some aspects of the sorter, but can make color highlights.
            -- I will work on this more later.
            use_highlighter = true,
        }
    }
}
EOF
