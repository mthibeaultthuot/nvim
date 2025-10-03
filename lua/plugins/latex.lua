-- plugins/latex_render.lua
return {
  -- Rust LaTeX rendering
  {
    "jbyuki/nabla.nvim",
    ft = { "rust" },
    config = function()
      vim.keymap.set("n", "<leader>np", function()
        require("nabla").popup()
      end, { desc = "Preview LaTeX (nabla)" })

      vim.keymap.set("n", "<leader>ni", function()
        require("nabla").enable_virt()
      end, { desc = "Inline LaTeX render (nabla)" })

      vim.keymap.set("n", "<leader>nd", function()
        require("nabla").disable_virt()
      end, { desc = "Disable inline render" })
    end,
  },
}
