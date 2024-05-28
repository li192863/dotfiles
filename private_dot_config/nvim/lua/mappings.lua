require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Mode
map({ "n", "i", "v" }, "jk", "<ESC>", { desc = "Enter normal mode" })
map("n", ";", ":", { desc = "Enter command mode" })

-- Tabs
map("n", ",,", "<CMD>qa<CR>", { desc = "Quit all" })
map({ "n", "i", "v" }, "<C-s>", "<CMD>w<CR><ESC>", { desc = "Save file" })

-- Line
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines up" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines down" })
