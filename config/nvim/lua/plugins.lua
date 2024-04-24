-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- plenary, required by a lot of plugins
  use "nvim-lua/plenary.nvim"
  use 'nvim-tree/nvim-web-devicons'
  use {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- For luasnip users.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- snippets
  use 'rafamadriz/friendly-snippets'

  use 'tpope/vim-git'
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'

  use 'lukas-reineke/indent-blankline.nvim'

  use { 'embear/vim-localvimrc', branch = 'main' }

  use 'ekalinin/Dockerfile.vim'

  use 'stephpy/vim-yaml'

  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'jparise/vim-graphql'

  use 'junegunn/vim-easy-align'

  use 'nvim-lualine/lualine.nvim'

  use 'rhysd/vim-gfm-syntax'
  use 'mzlogin/vim-markdown-toc'

  -- use 'Mofiqul/vscode.nvim'
  -- use 'marko-cerovac/material.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }

  use 'dag/vim-fish'

  use 'rust-lang/rust.vim'

  use 'hashivim/vim-terraform'

  use { 'akinsho/bufferline.nvim', tag = 'v2.*' }
end)
