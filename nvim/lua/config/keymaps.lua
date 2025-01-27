-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>ii", "<cmd>e $HOME\\Documents\\Notes\\Index.md<cr>", { desc = "Go to notes directory", remap = true })
map("n", "<leader>ig", "<cmd>MarknavJump<cr>", { desc = "Enter markdown link", remap = true })
