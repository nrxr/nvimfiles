set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

Plug 'scrooloose/syntastic'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'ghostbar/vim-snippets'

Plug 'embear/vim-localvimrc'

Plug 'ekalinin/Dockerfile.vim'

Plug 'stephpy/vim-yaml'

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'majutsushi/tagbar'

Plug 'junegunn/vim-easy-align'

Plug 'itchyny/lightline.vim'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'godlygeek/tabular'
Plug 'rhysd/vim-gfm-syntax'
Plug 'mzlogin/vim-markdown-toc'

Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'rakr/vim-one'
Plug 'NieTiger/halcyon-neovim'

Plug 'dag/vim-fish'

Plug 'rust-lang/rust.vim'

Plug 'hashivim/vim-terraform'
call plug#end()

filetype plugin indent on
syntax enable