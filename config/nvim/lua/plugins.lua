-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'


  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  use 'tpope/vim-git'
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'ctrlpvim/ctrlp.vim'

  use 'mattn/webapi-vim'
  use 'mattn/gist-vim'

  use 'scrooloose/syntastic'

  use 'ghostbar/vim-snippets'

  use 'embear/vim-localvimrc'

  use 'ekalinin/Dockerfile.vim'

  use 'stephpy/vim-yaml'

  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'jparise/vim-graphql'

  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  -- use { 'neoclide/coc.nvim', branch: 'release' }

  use 'majutsushi/tagbar'

  use 'junegunn/vim-easy-align'

  use 'itchyny/lightline.vim'

  use 'junegunn/goyo.vim'

  use { 'junegunn/fzf', run = function() vim.fn['fzf#install()'](0) end }
  use 'junegunn/fzf.vim'

  use 'rhysd/vim-gfm-syntax'
  use 'mzlogin/vim-markdown-toc'

  -- use 'arcticicestudio/nord-vim', { 'branch': 'main' }
  -- use 'shaunsingh/solarized.nvim'
  -- use 'sonph/onehalf', { 'rtp': 'vim/' }
  -- use 'rakr/vim-one'
  -- use 'NieTiger/halcyon-neovim'
  -- use 'NLKNguyen/papercolor-theme'
  -- use 'morhetz/gruvbox'
  -- use 'kaicataldo/material.vim', { 'branch': 'main' }
  -- use 'dracula/vim', { 'as': 'dracula' }
  use 'Mofiqul/vscode.nvim'

  use 'dag/vim-fish'

  use 'rust-lang/rust.vim'

  use 'hashivim/vim-terraform'

  use { 'akinsho/bufferline.nvim', tag = 'v2.*' }

end)
