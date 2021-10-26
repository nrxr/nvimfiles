" colorscheme solarized
" set background=dark
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
set t_Co=256

" set background=light
" colorscheme PaperColor

let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1
colorscheme material

" colorscheme dracula

" For dark theme
" let g:vscode_style = "dark"
" For light theme
" let g:vscode_style = "light"
" colorscheme vscode

" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

if (has('termguicolors'))
  set termguicolors
endif

set cursorline
