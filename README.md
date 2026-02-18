# 💤 LazyVim Config

This repository contains my personal configuration for [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim distribution built around the lazy.nvim plugin manager.

To use this config:
```sh
git clone https://github.com/jjvanvuren/lazyvim-config.git ~/.config/nvim
```

## What's Different from the Default LazyVim Config?

This configuration includes several customizations and additions on top of the default LazyVim setup:

### LazyVim Extras

Enabled via `lazyvim.json`:

- **AI**: `copilot-native`, `sidekick`
- **Languages**: `python`, `json`, `markdown`, `ansible`, `toml`
- **Coding**: `mini-comment`, `mini-surround`
- **Editor**: `harpoon2`
- **UI**: `treesitter-context`
- **Util**: `dot`, `mini-hipatterns`

### Plugins & Features

- **Extra Colorscheme**: Uses `catppuccin` (macchiato flavor, transparent background) as the main colorscheme. `tokyonight` is explicitly disabled.
- **Lualine**: Overrides `lualine_c` to show only diagnostics (removes the default filename/path).
- **[`git-blame.nvim`](https://github.com/f-person/git-blame.nvim)**: Shows inline git blame with author and relative date as virtual text.
- **Listchars**: Adds [`nvim-listchars`](https://github.com/fraso-dev/nvim-listchars) for better visualizing whitespace and special characters, with toggle keymap.
- **[`dropbar.nvim`](https://github.com/Bekaboo/dropbar.nvim)**: Adds a clickable breadcrumbs bar in the UI.
- **[Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)**: Enables smooth pane navigation between Neovim and tmux using the classic keybindings (`<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`).
- **Linting**: Integrates [`nvim-lint`](https://github.com/mfussenegger/nvim-lint) for JavaScript with automatic linting with jshint on buffer read/write.
- **[`swapdiff.nvim`](https://github.com/trippwill/swapdiff.nvim)**: Swap diff for comparing buffer states.

#### AI Integrations

- **[`copilot.lua`](https://github.com/zbirenbaum/copilot.lua)**: GitHub Copilot via LSP, using the `gpt-41-copilot` model.
- **[`sidekick.nvim`](https://github.com/folke/sidekick.nvim)**: Folke's Sidekick AI assistant, configured with a custom `rovodev` tool (via `acli rovodev`).

### Python Support

- **[`isort.nvim`](https://github.com/jjvanvuren/isort.nvim)**: Adds import sorting in Python files.
- **[`copybreadcrumbs.nvim`](https://github.com/jjvanvuren/copybreadcrumbs.nvim)**: Lets you copy code "breadcrumbs" (contextual code location) to your clipboard.

### Keymaps

- `<leader>tl`: Toggle listchars visualization.
- `<leader>va`: Select all text in buffer.
- `<leader>y` (visual) / `<leader>p`: Yank/paste to/from system clipboard.
- `<Leader>;`: Pick symbols in dropbar winbar.
- `[;`: Go to start of current dropbar context.
- `];`: Select next dropbar context.

### Editor Options & Autocmds

- Shows listchars by default (`vim.opt.list = true`).
- For Python, JavaScript, HTML, and SCSS files:
    - Sets `shiftwidth` and `tabstop` to 4 spaces.
    - Adds color columns at 80, 120.
    - Disables LazyVim's autoformat for these filetypes.
- Disables autoformat for JSON files.
