return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- lua/config/lsp.lua's `vim.lsp.enable()` is the single source of truth.
      -- Turning this off keeps the two lists from drifting and stops mason from
      -- auto-enabling tools such as `stylua` as language servers.
      automatic_enable = false,
      -- Keep this list in sync with `vim.lsp.enable()` in lua/config/lsp.lua
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_language_server",
        "prismals",
        "pyright",
        "jdtls",
        "eslint",
        "gopls",
      },
    },
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    },
    dependencies = {
      "williamboman/mason.nvim",
    },
  },
}
