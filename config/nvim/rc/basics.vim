" Syntax always on, I like colors
syn on
syntax sync fromstart

" No vi-compatible mode, this way things like modelines works 
" out-of-the-box on more stuff
set nocp

set backspace=indent,eol,start

" Set title on X window
set title

" Indentation
set autoindent " Keep indentation from previous line
set smartindent " Automatically inserts indentation in some cases

" show ruler
set ruler

" show line numbers
set number

" While pasting: activate this mode so autoindent doesn't screw it all
set pastetoggle=<F2>

set showcmd       " Show (partial) command in status line.
set showmatch     " Show matching brackets
set autowrite     " Automatically save before commands like :next and :make
set hidden        " Hide buffers when they are abandoned
set mouse=a       " Enable mouse usage (all modes)

" No backup! No `.swp` files anymore!
set nobackup
set nowritebackup
set noswapfile

" The unnamedplus clipboard makes the default neovim clipboard be combined
" with the system-integrated clipboard. Using the regular y you'll yank to
" Mac's pbcopy right away.
set clipboard+=unnamedplus

" Search related stuff
" use incremental search
set incsearch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Highlight search terms
set hlsearch

" Use 2-spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Insert tabs at the start of a line according to shiftwidth, not tabstop
set smarttab

set showbreak=↪\ 
" set list listchars=tab:┆\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list listchars=tab:┆\ ,nbsp:␣,trail:↲,extends:⟩,precedes:⟨


filetype off

" Load indentation rules according to filetype
filetype plugin indent on

"""""""""""""""""""""""""""""""
" Probably only the python one is actually required of the following list
"
"""""""""""""""""""""""""""""""

augroup js
  autocmd BufNewFile,BufRead *.js set expandtab
augroup END

augroup ts
  autocmd BufNewFile,BufRead *.ts set expandtab
augroup END

augroup json
  autocmd BufNewFile,BufRead *.json set conceallevel=0
augroup END

augroup py
  autocmd BufNewFile,BufRead *.py set expandtab sw=4 ts=4 sts=4
augroup END

augroup ronn
  autocmd BufNewFile,BufRead *.ronn set expandtab tw=80 filetype=markdown
augroup END

augroup tex
  autocmd BufNewFile,BufRead *.tex set expandtab
augroup END

augroup docker
  autocmd BufNewFile,BufRead Dockerfile* set ft=dockerfile
augroup END

augroup golang
  autocmd BufNewFile,BufRead *.go set noexpandtab sw=4 ts=4 sts=4
augroup END

augroup snippets
  autocmd BufNewFile,BufRead *.snippets set noexpandtab sw=4 ts=4 sts=4
augroup END

filetype plugin on

syntax on
syntax enable

let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_conceal = 0


" taken from http://robots.thoughtbot.com/faster-grepping-in-vim
"
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
