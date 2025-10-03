return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/mathieu",
        },
      },
      completion = {},
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.nvim",
    },
    ft = { "markdown", "mdx" },
    config = function()
      require("render-markdown").setup({
        latex = {
          enabled = true,
          engine = "katex",
        },
        render_modes = { "inline", "block" },
      })
      vim.keymap.set("n", "<leader>mr", function()
        require("render-markdown").toggle()
      end, { desc = "Toggle Markdown/LaTeX rendering" })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = true,
  },
}
