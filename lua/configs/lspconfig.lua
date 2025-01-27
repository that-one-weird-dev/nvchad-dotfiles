-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
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
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.csharp_ls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  handlers = {
    ["textDocument/definition"] = require("csharpls_extended").handler,
    ["textDocument/typeDefinition"] = require("csharpls_extended").handler,
  },
}
