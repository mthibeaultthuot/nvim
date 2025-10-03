return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<C-\>]], -- Open with Ctrl + \
        shade_terminals = true,
        direction = "float", -- Can be "horizontal", "vertical", or "float"
        start_in_insert = true,
      })
    end,
  },
}
