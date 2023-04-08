-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Swap LazyVim term to ToggleTerm
vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
