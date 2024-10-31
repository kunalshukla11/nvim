-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) --

-- Scroll horizontally right
vim.api.nvim_set_keymap("n", "<C-Right>", "5zl", { noremap = true, silent = true })
-- Scroll horizontally left
vim.api.nvim_set_keymap("n", "<C-Left>", "5zh", { noremap = true, silent = true })

-- Oil-nvim keymaps
keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
keymap.set("n", "<leader>o", ":Oil<CR>", { desc = "Open Oil file explorer" })
