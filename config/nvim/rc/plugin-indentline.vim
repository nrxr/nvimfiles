" let g:indent_guides_auto_colors = 0
" 
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd    guibg=white    ctermbg=254
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven   guibg=yellow   ctermbg=255
" 
" let g:indent_guides_enable_on_vim_startup = 1
"
" let g:indentLine_enabled = 0
" let g:indentLine_char = ''
" 
" let g:indentLine_fileTypeExclude = ['json']

lua << END
vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=white gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=white gui=nocombine]]

require("indent_blankline").setup {
    char = "┊",
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}
END
