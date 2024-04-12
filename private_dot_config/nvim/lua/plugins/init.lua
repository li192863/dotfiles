return {
  -- Formatter
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "lua-language-server", -- lua
        "bash-language-server", -- bashls
        -- "vscode-langservers-extracted", -- html cssls, see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html
        "html-lsp",
        "css-lsp",
        "typescript-language-server", -- tsserver
        "clangd", -- clangd
        "jdtls", -- jdtls
        "pyright", -- pyright
        -- Formatter
        "stylua", -- lua
        "shfmt", --bash
        "prettier", -- html css less javascript typescript
        "clang-format", -- c cpp
        "google-java-format", -- java
        "yapf", -- python
      },
    },
  },

  -- Syntax highlingting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- vim
        "vim",
        "vimdoc",
        -- lua
        "lua",
        -- bash
        "bash",
        -- html
        "html",
        "css",
        "javascript",
        "typescript",
        -- c
        "c",
        "cpp",
        -- java
        "java",
        -- python
        "python",
      },
    },
  },

  -- Java
  {
    "mfussenegger/nvim-jdtls",
  },
}
