-- Setup language server protocols
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  -- lua: "lua"
  "lua_ls",
  -- bash: "sh"
  "bashls",
  -- html: "html", "templ"
  "html",
  -- css: "css", "scss", "less"
  "cssls",
  -- ts/js: "javascript", "typescript", "vue"
  "tsserver",
  -- cpp: "c", "cpp", "objc", "objcpp", "cuda", "proto"
  "clangd",
  -- java: "java"
  "jdtls",
  -- python: "python"
  "pyright",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- lsps with custom config, see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- java
-- lspconfig.jdtls.setup {}
