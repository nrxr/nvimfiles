require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "query", "asm", "bash", "bibtex", "comment",
    "cmake", "cpp", "css", "diff", "fish", "git_config", "git_rebase",
    "gitattributes", "gitcommit", "gitignore", "go", "gomod", "gosum",
    "gotmpl", "gowork", "gpg", "graphql", "hare", "haskell",
    "haskell_persistent", "hcl", "html", "http", "ini", "javascript", "jq",
    "jsdoc", "json", "json5", "latex", "llvm", "luadoc", "make", "markdown",
    "markdown_inline", "matlab", "objc", "ocaml", "ocaml_interface",
    "ocamllex", "proto", "python", "r", "regex", "ron", "rust", "sql",
    "ssh_config", "terraform", "tmux", "toml", "typescript", "vhs", "xml",
    "yaml", "zig"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 200 * 1024 -- 200 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
