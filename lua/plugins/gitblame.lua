return {
  "f-person/git-blame.nvim",
  lazy = true,
  event = "VeryLazy",
  opts = {
    enabled = true,
    message_template = " <author> • <date>",
    date_format = "%r",
    virtual_text_column = 1, -- virtual text start column
  },
}
