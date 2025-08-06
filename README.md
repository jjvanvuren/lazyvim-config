# 💤 LazyVim Config

This repository contains my personal configuration for [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim distribution built around the lazy.nvim plugin manager.

To use this config:
```sh
git clone https://github.com/jjvanvuren/lazyvim-config.git ~/.config/nvim
```

## What’s Different from the Default LazyVim Config?

This configuration includes several customizations and additions on top of the default LazyVim setup:

### Plugins & Features
- **Extra Colorscheme**: Uses `catppuccin` (macchiato flavor, transparent background) as the main colorscheme. `tokyonight` is explicitly disabled.
- **Lualine**: Custom diagnostics section added to Lualine statusline.
- **[`git-blame.nvim`](https://github.com/f-person/git-blame.nvim)**: Shows author and date in the statusline.
- **Listchars**: Adds [`nvim-listchars`](https://github.com/0xfraso/nvim-listchars) for better visualizing whitespace and special characters, with toggle keymap.
- **[`dropbar.nvim`](https://github.com/Bekaboo/dropbar.nvim)**: Adds a clickable breadcrumbs bar in the UI.
- **[Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)**: Enables smooth pane navigation between Neovim and tmux using the classic keybindings (`<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`).
- **Linting**: Integrates [`nvim-lint`](https://github.com/mfussenegger/nvim-lint) for JavaScript with automatic linting with jshint on buffer read/write.

### Python Support
- **[`isort.nvim`](https://github.com/jjvanvuren/isort.nvim)**: Adds import sorting in Python files.
- **[`copybreadcrumbs.nvim`](https://github.com/jjvanvuren/copybreadcrumbs.nvim)**: Lets you copy code “breadcrumbs” (contextual code location) to your clipboard.

### Keymaps
- `<leader>tl`: Toggle listchars visualization.
- `<leader>va`: Select all text in buffer.
- `<leader>y / <leader>p`: Yank/paste to/from system clipboard in visual/normal mode.

### Editor Options & Autocmds
- Shows listchars by default (`vim.opt.list = true`).
- For Python, JavaScript, HTML, and SCSS files:
    - Sets `shiftwidth` and `tabstop` to 4 spaces.
    - Adds color columns at 80, 120.
    - Disables LazyVim's autoformat for these filetypes.
- Disables autoformat for JSON files.
