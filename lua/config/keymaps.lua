-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle listchars
vim.keymap.set("n", "<leader>tl", "<cmd>ListcharsToggle<cr>", { desc = "Toggle Listchars" })

-- Select All
vim.keymap.set("n", "<leader>va", "ggVG", { desc = "Select All" })

-- Yank to System clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to System Clipboard" })

-- Paste from System clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from System Clipboard" })
