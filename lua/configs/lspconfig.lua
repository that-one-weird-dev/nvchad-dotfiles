-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "gopls",
  "rust_analyzer",
  "svelte",
  "tailwindcss",
  "ocamllsp",
  "gdscript",
  "luau_lsp",
  "zls",
  "ols",
  "wgsl_analyzer",
  "hyprls",
  "taplo",
  "csharp_ls",
  "slangd",
  "ols",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  vim.lsp.enable(lsp)
end

require("csharpls_extended").buf_read_cmd_bind()

