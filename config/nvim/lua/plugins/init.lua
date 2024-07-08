-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return {
  -- plenary, required by a lot of plugins
  "nvim-lua/plenary.nvim",
  'nvim-tree/nvim-web-devicons',
  {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  },

  {
    'folke/lazydev.nvim',
    ft = 'lua',
  },

  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  'neovim/nvim-lspconfig', -- Configurations for Nvim LSP

  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- autocompletion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- For luasnip users.
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- snippets
  'rafamadriz/friendly-snippets',

  'tpope/vim-git',
  'tpope/vim-fugitive',
  'mhinz/vim-signify',

  'lukas-reineke/indent-blankline.nvim',

  { 'embear/vim-localvimrc', branch = 'main' },

  'junegunn/vim-easy-align',

  'nvim-lualine/lualine.nvim',

  'rhysd/vim-gfm-syntax',
  'mzlogin/vim-markdown-toc',

  -- 'Mofiqul/vscode.nvim'
  -- 'marko-cerovac/material.nvim'
  { 'catppuccin/nvim', name = 'catppuccin' },

  'dag/vim-fish',

  'rust-lang/rust.vim',

  'hashivim/vim-terraform',

  { 'akinsho/bufferline.nvim' },
}
