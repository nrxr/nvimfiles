require("ibl").setup {
    indent = {
      highlight = {
        "CursorColumn",
        "Whitespace",
      },
      char = "┊"
    },
    whitespace = {
      highlight = {
        "CursorColumn",
        "Whitespace",
      },
      remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
