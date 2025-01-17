return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    -- Configure null-ls with jshint
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.jshint.with({
          -- Adjust the command if jshint is not in your PATH
          command = vim.g.jshintprg or "jshint",

          -- Optional: Pass a custom config file
          extra_args = function()
            if vim.g.jshintconfig then
              return { "--config", vim.g.jshintconfig }
            end
            return {}
          end,
        }),
      },

      -- Automatically open diagnostics if errors are detected
      on_attach = function(client, bufnr)
        if client.server_capabilities.documentDiagnosticsProvider then
          vim.api.nvim_create_autocmd("BufWritePost", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.lint()
            end,
          })
        end
      end,
    })
  end,
}
