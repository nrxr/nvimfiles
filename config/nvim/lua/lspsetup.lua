-- Setup language servers.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config['rust_analyzer'] = {
  -- Server-specific settings. See `:help lspconfig-setup`
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {},
  },
}

vim.lsp.config['terraformls'] = {
  capabilities = capabilities,
}

vim.lsp.config['lua_ls'] = {
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend(
      'force',
      client.config.settings.Lua,
      {
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME
          }
        }
    })
  end,
  settings = {
    Lua = {}
  },
  capabilities = capabilities,
}

-- C, C++ LSP server.
vim.lsp.config['ccls'] ={
  capabilities = capabilities,
  init_options = {
    cache = {
      directory = ".ccls-cache",
    },
  },
}

-- gopls configuration
-- ref: https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim-v050
vim.lsp.config['gopls'] ={
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
  on_attach = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.go', 'go.mod' },
      callback = function()
        vim.lsp.buf.format({ async = false })
      end
    })
  end,
}

-- organize imports on save with goimports logic
-- ref: https://github.com/golang/tools/blob/master/gopls/doc/vim.md#imports-and-formatting
vim.api.nvim_create_autocmd('BufWritePre',{
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    -- buf_request_sync defaults to a 1000ms timeout. Depending on your
    -- machine and codebase, you may want longer. Add an additional
    -- argument after params if you find that you have to write the file
    -- twice for changes to be saved.
    -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({async = false})
  end
})

vim.lsp.enable({'lua_ls', 'gopls', 'rust_analyzer', 'terraformls', 'ccls'})

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

-- disable logging
vim.lsp.set_log_level("off")
