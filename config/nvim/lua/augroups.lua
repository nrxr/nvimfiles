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
    command = 'set expandtab tw=80 filetype=markdown',
    group   = ronngrp,
  }
)

local dockergrp = vim.api.nvim_create_augroup("DockerFormat", {})
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { 'Dockerfile*' },
    command = 'set filetype=dockerfile',
    group   = dockergrp,
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
