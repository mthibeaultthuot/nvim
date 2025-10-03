-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Toggle Markdown/LaTeX rendering
-- Only set keymaps if the plugin is available
vim.keymap.set("n", "<leader>mR", function()
  -- Turn off rendering
  require("render-markdown").toggle(false)
  -- Turn on rendering (forces a refresh)
  require("render-markdown").toggle(true)
end, { desc = "Refresh Markdown/LaTeX rendering" })

vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
vim.keymap.set("t", "<C-t>", "<C-\\><C-n><cmd>ToggleTerm<cr>", { noremap = true, silent = true })
