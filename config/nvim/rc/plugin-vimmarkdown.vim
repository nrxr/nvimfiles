let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
let g:markdown_fenced_languages = ['json', 'go', 'golang=go', 'fish', 'sh', 'console=sh', 'javascript', 'js=javascript', 'node=javascript', 'typescript', 'ts=typescript', 'rust', 'lua', 'yaml', 'terraform']
autocmd BufRead,BufNew,BufNewFile *.md setlocal ft=markdown.gfm
