return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    lazy = false,
    priority= 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Choose between "latte", "frappe", "macchiato", "mocha"
      })
      vim.cmd("colorscheme catppuccin")
    end
  }
}
