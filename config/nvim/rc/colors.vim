set t_Co=256

if (has('termguicolors'))
  set termguicolors
endif

" Fix italics in Vim

" set t_ZH=^[[3m
" set t_ZR=^[[23m

" let &t_ZH="\e[3m"
" let &t_ZR="\e[23m"

" highlight Comment cterm=italic


" let g:solarized_termcolors=16
" g:solarized_termcolors= 16 | 256 
" g:solarized_termtrans = 0 | 1
" g:solarized_degrade = 0 | 1 
" g:solarized_bold = 1 | 0 
" g:solarized_underline = 1 | 0 
" g:solarized_italic = 1 | 0 
" g:solarized_contrast = "normal"| "high" or "low" 
" g:solarized_visibility= "normal"| "high" or "low"


" set background=dark
" colorscheme solarized
" set background=light

" let g:gruvbox_italic=1
" colorscheme gruvbox
" set background=dark
" set background=light

" colorscheme nord
" let g:nord_comment_brightness = 12
" let g:nord_italic = 1

" colorscheme halcyon
" colorscheme onehalflight
" colorscheme onehalfdark

" colorscheme one
" set background=dark
" set background=light
" let g:one_allow_italics = 1

" set background=light
" colorscheme PaperColor

" let g:material_theme_style = 'lighter'
" let g:material_terminal_italics = 1
" colorscheme material

" colorscheme dracula

lua << EOF

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    style = 'light',
    transparent = true,
    italic_comments = true,
    disable_nvimtree_bg = true,
})
require('vscode').load()

EOF

set cursorline
