return {
  "fraso-dev/nvim-listchars",
  event = "BufEnter",
  config = function()
    require("nvim-listchars").setup({
      save_state = true,
      listchars = {
        trail = "·",
        tab = "→ ",
        space = "·",
        extends = "⟩",
        precedes = "⟨",
      },
      notifications = true,
      exclude_filetypes = {
        "markdown",
      },
      lighten_step = 10,
    })
  end,
}
