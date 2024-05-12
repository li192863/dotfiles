-- Setup formatters
local options = {
  -- Define your formatters
  formatters_by_ft = {
    lua = { "stylua" },
    sh = { "shfmt" },
    html = { "prettier" },
    css = { "prettier" },
    less = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    java = { "google-java-format" },
    python = { "yapf" },
  },

  -- Set up format-on-save
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  -- Customize formatters
  formatters = {
    -- lua
    stylua = {},
    -- sh
    shfmt = {
      prepend_args = { "-i", "2" },
    },
    -- html, css, less, javascript, typescript
    -- prettier = {
    --   prepend_args = function(_, ctx)
    --     local ext = string.sub(ctx.filename, -3)
    --     if ext == ".js" or ext == ".ts" then
    --       return { "--tab-width", "4" }
    --     else
    --       return {}
    --     end
    --   end,
    -- },
    -- c, cpp
    ["clang-format"] = {
      prepend_args = { "--style", "{BasedOnStyle: google, IndentWidth: 2}" },
    },
    -- -- java
    -- ["google-java-format"] = {
    --   prepend_args = { "--aosp" },
    -- },
    -- python
    yapf = {},
  },
}

require("conform").setup(options)
