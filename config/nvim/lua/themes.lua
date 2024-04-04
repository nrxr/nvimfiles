require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    -- flavour = "auto" -- will respect terminal's background
    background = { -- :h background
        light = "latte",
        dark = "frappe",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- OLD setup
--
-- material theme setup
-- require('material').setup({
-- 
--     contrast = {
--         terminal = false, -- Enable contrast for the built-in terminal
--         sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
--         floating_windows = false, -- Enable contrast for floating windows
--         cursor_line = false, -- Enable darker background for the cursor line
--         non_current_windows = false, -- Enable darker background for non-current windows
--         filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
--     },
-- 
--     styles = { -- Give comments style such as bold, italic, underline etc.
--         comments = { italic = true },
--         strings = { --[[ bold = true ]] },
--         keywords = { bold = true },
--         functions = { bold = true, underline = false },
--         variables = {},
--         operators = {},
--         types = { bold = true },
--     },
-- 
--     plugins = { -- Uncomment the plugins that you use to highlight them
--         -- Available plugins:
--         -- "dap",
--         -- "dashboard",
--         "gitsigns",
--         -- "hop",
--         -- "indent-blankline",
--         -- "lspsaga",
--         -- "mini",
--         -- "neogit",
--         -- "neorg",
--         "nvim-cmp",
--         -- "nvim-navic",
--         -- "nvim-tree",
--         -- "nvim-web-devicons",
--         -- "sneak",
--         "telescope",
--         -- "trouble",
--         -- "which-key",
--     },
-- 
--     disable = {
--         colored_cursor = false, -- Disable the colored cursor
--         borders = false, -- Disable borders between verticaly split windows
--         background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
--         term_colors = false, -- Prevent the theme from setting terminal colors
--         eob_lines = false -- Hide the end-of-buffer lines
--     },
-- 
--     high_visibility = {
--         lighter = false, -- Enable higher contrast text for lighter style
--         darker = false -- Enable higher contrast text for darker style
--     },
-- 
--     lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
-- 
--     async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
-- 
--     custom_colors = nil, -- If you want to everride the default colors, set this to a function
-- 
--     custom_highlights = {}, -- Overwrite highlights with your own
-- })
-- 
-- material styles: darker, lighter, oceanic, palenight, deep ocean
-- vim.g.material_style = 'palenight'
-- vim.cmd 'colorscheme noctis_lux'

-- vscode
--
-- vim.o.background = 'light'
-- 
-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
--   italic_comments = true,
--   disable_nvimtree_bg = true,
-- 
-- --  group_overrides = {
-- --        Comment = { fg = c.vscGreen, bg = 'NONE', gui=italic, cterm=italic, italic=true }
-- --  }
-- })
-- 
-- require('vscode').load()


