return {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    tsx = { "prettier" },
    cs = { "csharpier" },
  },

  formatters = {
    csharpier = {
      command = "csharpier",
      args = {
        "format",
        "--write-stdout",
      },
      to_stdin = true,
    }
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}
