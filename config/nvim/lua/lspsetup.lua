-- Setup language servers.
local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {},
  },
}

lspconfig.terraformls.setup{
  capabilities = capabilities,
}

-- C, C++ LSP server.
lspconfig.ccls.setup{
  capabilities = capabilities,
  init_options = {
    cache = {
      directory = ".ccls-cache",
    },
  },
}

-- gopls configuration
-- ref: https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-v050
lspconfig.gopls.setup{
	cmd = {'gopls'},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
	capabilities = capabilities,
	-- for postfix snippets and analyzers
  settings = {
    gopls = {
      analyses = {
        -- ref: https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
        unusedparams = true,
        shadow = true,
        unusedvariable = true,
      },
      experimentalPostfixCompletions = true,
      gofumpt = true,
      staticcheck = true,
      hoverKind = "FullDocumentation",
      usePlaceholders = true
    },
  },
	on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.go', 'go.mod' },
      callback = function()
        vim.lsp.buf.format({ async = false })
      end
    })
  end,
}

-- organize imports on save with goimports logic
-- ref: https://github.com/golang/tools/blob/master/gopls/doc/vim.md#imports
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*.go',
--   callback = function()
--     vim.lsp.buf.code_action({
--       context = {
--         only = { 'source.organizeImports' } 
--       },
--       apply = true,
--     })
--   end
-- })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
