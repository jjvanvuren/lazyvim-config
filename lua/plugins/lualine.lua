return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  opts = function(_, opts)
    opts.sections.lualine_c = { { "diagnostics" } }
  end,
}
