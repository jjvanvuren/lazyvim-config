-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.list = true
vim.opt.listchars = {
  space = "·", -- Show spaces as dots
  tab = "→ ", -- Show tabs with an arrow
  trail = "⋅", -- Show trailing spaces
  extends = "⟩", -- Show lines that extend beyond the screen
  precedes = "⟨", -- Show lines that wrap to the left
}
