if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  "call dein#add('Shougo/deoplete.nvim')
  " if !has('nvim')
   " call dein#add('roxma/nvim-yarp')
   " call dein#add('roxma/vim-hug-neovim-rpc')
  "endif

  call dein#add('wsdjeg/dein-ui.vim')

  call dein#add('tpope/vim-git')
  call dein#add('tpope/vim-fugitive')
  call dein#add('mhinz/vim-signify')

  call dein#add('ctrlpvim/ctrlp.vim')

  call dein#add('mattn/webapi-vim')
  call dein#add('mattn/gist-vim')

  call dein#add('scrooloose/syntastic')

  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('ghostbar/vim-snippets')

  call dein#add('embear/vim-localvimrc')

  call dein#add('ekalinin/Dockerfile.vim')

  call dein#add('stephpy/vim-yaml')

  call dein#add('fatih/vim-go')
  call dein#add('neoclide/coc.nvim', {'merge': 0, 'rev': 'release' })

  call dein#add('majutsushi/tagbar')

  call dein#add('junegunn/vim-easy-align')

  call dein#add('itchyny/lightline.vim')

  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/fzf.vim')

  call dein#add('godlygeek/tabular')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('mzlogin/vim-markdown-toc')

  call dein#add('arcticicestudio/nord-vim')

  call dein#end()
  call dein#save_state()
endif
