vim.g.go_highlight_functions = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_build_constraints = 1

-- disable vim-go :GoDef short cut (gd)
-- this is handled by LanguageClient [LC]
vim.g.go_def_mapping_enabled = 0
vim.g.go_def_mode='gopls'
vim.g.go_info_mode='gopls'
vim.g.go_fmt_autosave = 0
vim.g.go_mod_fmt_autosave = 0
