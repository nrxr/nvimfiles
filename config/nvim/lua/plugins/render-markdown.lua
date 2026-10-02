return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = "markdown",
  ---@type render.md.UserConfig
  opts = {
    -- keep inline markers (e.g. `backticks`) visible while rendered
    win_options = { conceallevel = { rendered = 0 } },
    bullet = { left_pad = 0, right_pad = 1 },
    -- border = "none" keeps the ``` fence lines visible
    code = { width = "block", left_pad = 2, right_pad = 2, border = "none" },
    completions = { lsp = { enabled = true } },
    -- empty icons keeps the # markers visible
    heading = { width = "block", left_pad = 1, right_pad = 1, position = "inline" },
    pipe_table = { border = { "╭", "┬", "╮", "├", "┼", "┤", "╰", "┴", "╯", "│", "─" } },
    sign = { enabled = false },
  },
}
