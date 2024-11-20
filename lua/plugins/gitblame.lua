return {
  "f-person/git-blame.nvim",
  -- load the plugin at startup
  event = "VeryLazy",
  opts = {
    enabled = true,
    message_template = " <author> • <date> • <<sha>>",
    date_format = "%d/%m/%Y %H:%M:%S",
    virtual_text_column = 1, -- virtual text start column
  },
}
