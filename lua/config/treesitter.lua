-- config/treesitter.lua
require("nvim-treesitter.configs").setup({
  ensure_installed = { "rust", "markdown", "markdown_inline", "latex" },
  highlight = {
    enable = true,
  },
})
