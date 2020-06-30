"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_toc_autofit = 1
"set conceallevel=2

"let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'go=golang']

"let g:vim_markdown_frontmatter = 1

"let g:vim_markdown_strikethrough = 1
"let g:vim_markdown_no_extensions_in_markdown = 1

let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
let g:markdown_fenced_languages = ['cpp', 'ruby', 'json', 'golang=go', 'sh']
autocmd BufRead,BufNew,BufNewFile *.md setlocal ft=markdown.gfm
