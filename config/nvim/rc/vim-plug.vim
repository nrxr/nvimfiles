set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

Plug 'scrooloose/syntastic'

Plug 'ghostbar/vim-snippets'

Plug 'embear/vim-localvimrc'

Plug 'ekalinin/Dockerfile.vim'

Plug 'stephpy/vim-yaml'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
" Plug 'heavenshell/vim-jsdoc', { 
"   \ 'for': ['javascript', 'javascript.jsx','typescript'], 
"  \ 'do': 'make install'
"\}

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'majutsushi/tagbar'

Plug 'junegunn/vim-easy-align'

Plug 'itchyny/lightline.vim'

" Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'


Plug 'junegunn/goyo.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'rhysd/vim-gfm-syntax'
Plug 'mzlogin/vim-markdown-toc'

Plug 'arcticicestudio/nord-vim', { 'branch': 'main' }
Plug 'shaunsingh/solarized.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'rakr/vim-one'
Plug 'NieTiger/halcyon-neovim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Mofiqul/vscode.nvim'

Plug 'dag/vim-fish'

Plug 'rust-lang/rust.vim'

Plug 'hashivim/vim-terraform'

" Plug 'akinsho/bufferline.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }


call plug#end()

filetype plugin indent on
syntax enable
