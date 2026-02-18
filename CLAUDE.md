# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LazyVim-based Neovim configuration. It extends the [LazyVim](https://github.com/LazyVim/LazyVim) distribution with custom plugins, keymaps, and filetype settings, primarily targeting Python and JavaScript development.

## Architecture

- **Entry point**: `init.lua` loads `config.lazy`
- **`lua/config/lazy.lua`**: Bootstraps lazy.nvim, imports base LazyVim plugins (`lazyvim.plugins`) then custom plugins (`plugins`)
- **`lua/config/options.lua`**: Vim options (loaded before lazy.nvim startup)
- **`lua/config/keymaps.lua`**: Custom keybindings (loaded on VeryLazy event)
- **`lua/config/autocmds.lua`**: Filetype-specific autocommands
- **`lua/plugins/*.lua`**: Each file returns a plugin spec table (or list of tables) for lazy.nvim. Adding a new `.lua` file here auto-registers it.
- **`lazyvim.json`**: Declares enabled LazyVim extras (lang packs, AI integrations, editor enhancements)

## Commands

- **Format Lua files**: `stylua .` (2-space indent, 120 column width; config in `stylua.toml`)

## Key Conventions

- **Lua formatting**: StyLua with 2-space indentation, 120 column width (see `stylua.toml`)
- **Filetype settings**: Python/JavaScript use 4-space indent, colorcolumn at 80 and 120, autoformat disabled. HTML/SCSS use 4-space indent. JSON has autoformat disabled. These are set via autocommands in `lua/config/autocmds.lua`.
- **Colorscheme**: Catppuccin (macchiato, transparent background controlled via `vim.g.transparent_background`). Tokyonight is explicitly disabled.

## Enabled LazyVim Extras

AI: `copilot-native`, `sidekick`. Languages: `python`, `json`, `markdown`, `ansible`, `toml`. Coding: `mini-comment`, `mini-surround`. Editor: `harpoon2`. UI: `treesitter-context`. Util: `dot`, `mini-hipatterns`.

## Custom Plugins of Note

- **copilot.lua**: GitHub Copilot (LSP-based, model: `gpt-41-copilot`)
- **sidekick.lua**: Folke's sidekick with custom `rovodev` tool (`acli rovodev`)
- **listchars.lua**: Whitespace visualisation with unicode chars, toggle via `<leader>tl`. Markdown excluded.
- **dropbar.lua**: Clickable breadcrumb bar (`<Leader>;`, `[;`, `];`)
- **vim-tmux-navigator.lua**: Seamless `<C-h/j/k/l>` navigation between nvim and tmux panes
- **isort.lua** / **copybreadcrumbs.lua**: Python-specific tooling (import sorting, breadcrumb copying)
- **nvim-lint.lua**: jshint linting for JavaScript on BufReadPost/BufWritePost
- **gitblame.lua**: Inline git blame with `<author> • <relative date>` format
- **lualine.lua**: Overrides lualine_c to show only diagnostics (removes filename/path)
- **swapdiff.lua**: Swap diff for comparing buffer states

## Custom Keymaps

- `<leader>tl` - Toggle listchars
- `<leader>va` - Select all
- `<leader>y` (visual) - Yank to system clipboard
- `<leader>p` - Paste from system clipboard
