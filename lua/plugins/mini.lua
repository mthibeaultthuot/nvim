return {
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.files").setup({
        windows = {
          preview = true,
          max_number = 1,
          width_focus = 30,
          width_preview = 30,
        },
      })
      vim.keymap.set(
        "n",
        "<C-y>",
        ":lua MiniFiles.open(vim.fn.getcwd())<CR>",
        { noremap = true, silent = true, desc = "MiniFile [E]xplorer" }
      )
    end,
  },

  {
    "echasnovski/mini.icons",
    opts = {},
    lazy = true,
    specs = {
      { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
}
