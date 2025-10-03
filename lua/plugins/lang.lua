return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Rust
        rust_analyzer = {},

        -- Python
        pyright = {},

        -- JavaScript / TypeScript / TSX / JSX
        tsserver = {},
      },
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "python",
        "typescript",
        "tsx",
        "javascript",
        "jsx",
      },
    },
  },

  -- Formatter
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rustfmt", -- Rust
        "black", -- Python
        "ruff", -- Python linter/formatter
        "prettierd", -- JS / TS / JSX / TSX
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        python = { "black" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
      },
    },
  },
}
