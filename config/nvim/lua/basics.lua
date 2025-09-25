-- Syntax always on, I like colors
vim.cmd 'syntax enable'
vim.cmd 'syntax sync fromstart'

-- Indentation rules according to filetype
vim.cmd 'filetype plugin indent on'

vim.o.termguicolors = true
vim.o.cursorline = true

-- backspace deletes like most programs in insert mode
vim.o.backspace = 'indent,eol,start'

-- Set title on X window
vim.o.title = true

-- Indentation
vim.o.autoindent  = true -- Keep indentation from previous line
vim.o.smartindent = true -- Automatically insert indentation in some cases

vim.o.showcmd   = true -- Show (partial) command in status line
vim.o.showmatch = true -- Show matching brackets
vim.o.autowrite = true -- Automatically save before commands like :next and :make
vim.o.hidden    = true -- Hide buffers when they are abandoned
vim.o.mouse     = 'a' -- Enable mouse usage (all modes)

-- No backup! No `.swp` files anymore!
vim.o.backup      = false
vim.o.writebackup = false
vim.o.swapfile    = false

-- The unnamedplus clipboard makes the default neovim clipboard be combined
-- with the system-integrated clipboard. Using the regular `y` will yank to
-- Mac's `pbcopy` right away.
vim.o.clipboard = 'unnamedplus'

-- Search related stuff
vim.o.incsearch = true -- incremental search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true -- highlight search terms

-- line numbers
vim.o.number = true
vim.o.numberwidth = 2
vim.o.ruler = false -- status line will already show the ruler (line and column number of the cursor position)

-- Open new split panes to right and bottom, which feels more natural
vim.o.splitbelow = true
vim.o.splitright = true

-- should make scrolling faster
vim.o.ttyfast = true


-- Tabs vs. Spaces: I like 2-spaces instead of tabs
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.smarttab = true -- insert tabs at the start of a line according to shiftwidth, not tabstop.
vim.o.showbreak = '↪ '
vim.o.list = true
vim.o.listchars = 'tab:│ ,nbsp:␣,trail:↲,extends:⟩,precedes:⟨'
