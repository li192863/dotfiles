require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Mode
map({ "n", "i", "v" }, "jk", "<ESC>", { desc = "Enter normal mode" })
map("n", ";", ":", { desc = "Enter command mode" })

-- Tabs
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>", { desc = "Save file" })

-- Line
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Swap line below" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Swap Line above" })
