vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.py' },
    command = 'set expandtab sw=4 ts=4 sts=4',
  }
)

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.ronn' },
    command = 'set expandtab tw=80 filetype=markdown',
  }
)

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { 'Dockerfile*' },
    command = 'set filetype=dockerfile',
  }
)

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' }, {
    pattern = { '*.go' },
    command = 'set noexpandtab sw=4 ts=4 sts=4',
  }
)
