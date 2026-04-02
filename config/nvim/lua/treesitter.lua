local ts = require('nvim-treesitter')

ts.setup {}

-- Register custom parsers (monorepo with subdirectories)
vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    local parsers = require('nvim-treesitter.parsers')

    parsers.asciidoc = {
      install_info = {
        branch = "master",
        queries = "queries/asciidoc/",
        requires = { "asciidoc_inline" },
        url = 'https://github.com/cathaysia/tree-sitter-asciidoc',
        location = 'tree-sitter-asciidoc',
      },
    }

    parsers.asciidoc_inline = {
      install_info = {
        branch = "master",
        url = 'https://github.com/cathaysia/tree-sitter-asciidoc',
        location = 'tree-sitter-asciidoc_inline',
        queries = "queries/asciidoc_inline",
      },
    }
  end,
})

-- Install parsers (async, skips already-installed)
ts.install {
  "asciidoc",
  "asciidoc_inline",
  "asm",
  "bash",
  "bibtex",
  "c",
  "cmake",
  "comment",
  "cpp",
  "css",
  "diff",
  "fish",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "go",
  "gomod",
  "gosum",
  "gotmpl",
  "gowork",
  "gpg",
  "graphql",
  "hare",
  "haskell",
  "haskell_persistent",
  "hcl",
  "html",
  "http",
  "ini",
  "javascript",
  "jq",
  "jsdoc",
  "json",
  "json5",
  "latex",
  "llvm",
  "lua",
  "luadoc",
  "make",
  "markdown",
  "markdown_inline",
  "matlab",
  "objc",
  "ocaml",
  "ocaml_interface",
  "ocamllex",
  "proto",
  "python",
  "query",
  "r",
  "regex",
  "ron",
  "rust",
  "sql",
  "ssh_config",
  "terraform",
  "tmux",
  "toml",
  "typescript",
  "vhs",
  "vim",
  "vimdoc",
  "xml",
  "yaml",
  "zig",
}

-- Languages to exclude from treesitter highlighting
local disabled_langs = { 'dockerfile', 'supercollider' }
local max_filesize = 300 * 1024 -- 300 KB

-- Enable highlighting and indentation per-buffer via FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('UserTreesitter', { clear = true }),
  callback = function(args)
    local buf = args.buf
    local ft = vim.bo[buf].filetype
    local lang = vim.treesitter.language.get_lang(ft) or ft

    -- Skip excluded languages
    for _, disabled in ipairs(disabled_langs) do
      if lang == disabled then
        return
      end
    end

    -- Skip large files
    local bufname = vim.api.nvim_buf_get_name(buf)
    if bufname ~= '' then
      local ok, stats = pcall(vim.uv.fs_stat, bufname)
      if ok and stats and stats.size > max_filesize then
        return
      end
    end

    -- Enable treesitter highlighting (pcall handles missing parsers)
    if pcall(vim.treesitter.start, buf, lang) then
      -- Enable treesitter indentation only if highlighting succeeded
      vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
