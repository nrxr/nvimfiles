require('bufferline').setup{}

-- Navigate through buffers in order, regardless of which mode you are using.
vim.keymap.set('n', 'b]', '<cmd>BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', 'b[', '<cmd>BufferLineCyclePrev<CR>', { silent = true })
