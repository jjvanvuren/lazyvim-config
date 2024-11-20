return {
  {
    "walm/jshint.vim",
    ft = { "javascript", "javascriptreact" },
    config = function()
      -- Set up autocommand to lint on save
      vim.cmd([[
            augroup JSHintAutocmd
            autocmd!
            autocmd BufWritePost *.js,*.jsx silent! JSHint
            augroup END
        ]])
    end,
  },
}
