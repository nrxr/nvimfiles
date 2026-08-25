# Neovim Keybinding Cheatsheet

This cheatsheet lists the keybindings explicitly defined by the Neovim
configuration in this repository. It includes direct `vim.keymap.set` mappings
and the custom `nvim-cmp` mapping table.

Notes:

- `<leader>` is not set anywhere in this repo. With Neovim's default settings,
  `<leader>` is `\`.
- `<space>` means pressing the Space key.
- LSP buffer mappings are only installed after an LSP client attaches to the
  current buffer.
- Plugin default mappings from plugins configured with empty setup tables are not
  expanded here.

## Mode Legend

| Mode | Meaning |
| --- | --- |
| `n` | Normal |
| `i` | Insert |
| `x` | Visual |
| `s` | Select |
| `cmdline` | Command-line completion context |

## Telescope

Source: `config/nvim/lua/telescope-setup.lua`

| Mode | Key | What it does |
| --- | --- | --- |
| `n` | `<leader>ff` | Open Telescope file finder. This config also includes `.github` in the search dirs. |
| `n` | `<leader>fg` | Open Telescope live grep. |
| `n` | `<leader>fb` | Open Telescope buffer picker. |
| `n` | `<leader>fh` | Open Telescope help tag picker. |

## Diagnostics

Source: `config/nvim/lua/lspsetup.lua`

| Mode | Key | What it does |
| --- | --- | --- |
| `n` | `<space>e` | Open a floating diagnostic message at the cursor. |
| `n` | `[d` | Jump to the previous diagnostic. |
| `n` | `]d` | Jump to the next diagnostic. |
| `n` | `<space>q` | Put diagnostics into the location list. |

## LSP

Source: `config/nvim/lua/lspsetup.lua`

These mappings are buffer-local and are created by the `LspAttach` autocmd.

| Mode | Key | What it does |
| --- | --- | --- |
| `n` | `gD` | Go to symbol declaration. |
| `n` | `gd` | Go to symbol definition. |
| `n` | `K` | Show hover information. |
| `n` | `gi` | Go to implementation. |
| `n` | `<C-k>` | Show signature help. |
| `n` | `<space>wa` | Add a workspace folder. |
| `n` | `<space>wr` | Remove a workspace folder. |
| `n` | `<space>wl` | Print the current LSP workspace folders. |
| `n` | `<space>D` | Go to type definition. |
| `n` | `<space>rn` | Rename the symbol under the cursor. |
| `n` | `<space>ca` | Open code actions. |
| `n` | `gr` | List references. |
| `n` | `<space>f` | Format the current buffer asynchronously with LSP. |

## Completion

Source: `config/nvim/lua/completion.lua`

These mappings are configured through `nvim-cmp`.

| Mode | Key | What it does |
| --- | --- | --- |
| `i` | `<C-b>` | Scroll completion documentation up by 4 lines. |
| `i` | `<C-f>` | Scroll completion documentation down by 4 lines. |
| `i` | `<C-Space>` | Trigger completion. |
| `i` | `<C-e>` | Abort completion. |
| `i` | `<CR>` | Confirm the currently selected completion item. It will not auto-select an item. |
| `i`, `s` | `<Tab>` | If the completion menu is visible, select the next item; otherwise, jump forward in a LuaSnip snippet if possible; otherwise, use the normal fallback behavior. |
| `i`, `s` | `<S-Tab>` | If the completion menu is visible, select the previous item; otherwise, jump backward in a LuaSnip snippet if possible; otherwise, use the normal fallback behavior. |

`nvim-cmp` also uses its default cmdline preset mappings for `/`, `?`, and `:`
completion. The repo does not customize those individual cmdline keys.

## Alignment

Source: `config/nvim/lua/easyalign-setup.lua`

| Mode | Key | What it does |
| --- | --- | --- |
| `n`, `x` | `ga` | Invoke Vim Easy Align. In visual mode this aligns the selection; in normal mode it starts Easy Align for a following motion or text object. |

## Buffers

Source: `config/nvim/lua/bufferline-setup.lua`

| Mode | Key | What it does |
| --- | --- | --- |
| `n` | `b]` | Move to the next buffer in BufferLine. |
| `n` | `b[` | Move to the previous buffer in BufferLine. |

## Defined But Not Loaded

Source: `config/nvim/lua/luasnip-setup.lua`

`luasnip-setup.lua` defines the mappings below, but `config/nvim/init.lua` does
not require this file, so they are not active in the normal startup path.

| Mode | Key | What it would do if loaded |
| --- | --- | --- |
| `i` | `<Tab>` | Expand a snippet. |
| `i`, `s` | `<Tab>` | Jump forward in a snippet. This would override the insert-mode `<Tab>` expand mapping above. |
| `i`, `s` | `<S-Tab>` | Jump backward in a snippet. |
| `i`, `s` | `<C-E>` | Move to the next choice in an active LuaSnip choice node. |

The active completion config already provides LuaSnip jump behavior through
`<Tab>` and `<S-Tab>` in `config/nvim/lua/completion.lua`.
