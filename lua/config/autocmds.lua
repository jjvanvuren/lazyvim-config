-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "javascript" },
  callback = function()
    -- Number of spaces to use for autoindenting
    vim.opt_local.shiftwidth = 4

    -- Set rulers at 80 and 120 characters
    vim.opt_local.colorcolumn = "80,120"

    -- Disable LazyVim auto format
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "htmldjango", "scss" },
  callback = function()
    -- Number of spaces to use for autoindenting
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})

-- Disable auto format for JSON files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json" },
  callback = function()
    vim.b.autoformat = false
  end,
})
