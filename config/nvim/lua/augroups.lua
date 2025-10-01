local pygrp = vim.api.nvim_create_augroup("PythonFormat", {})
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.py' },
    command = 'set expandtab sw=4 ts=4 sts=4',
    group   = pygrp,
  }
)

local ronngrp = vim.api.nvim_create_augroup("RonnFormat", {})
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.ronn' },
    command = 'set ft=markdown expandtab sw=2 ts=2 sts=2 tw=80',
    group   = ronngrp,
  }
)

local mdgrp = vim.api.nvim_create_augroup("MarkdownFormat", {})
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.md' },
    command = 'set ft=markdown expandtab sw=2 ts=2 sts=2 tw=80',
    group   = mdgrp,
  }
)


local gogrp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.go' },
    command = 'set noexpandtab sw=4 ts=4 sts=4',
    group   = gogrp,
  }
)
