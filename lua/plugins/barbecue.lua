return {
  "utilyre/barbecue.nvim",
  lazy = true,
  event = "VeryLazy",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
  },
  opts = {
    kinds = LazyVim.config.icons.kinds,
    show_modified = true,
    symbols = {
      ---Modification indicator.
      ---
      ---@type string
      modified = "",

      ---Truncation indicator.
      ---
      ---@type string
      ellipsis = "…",

      ---Entry separator.
      ---
      ---@type string
      separator = "",
    },
  },
}
