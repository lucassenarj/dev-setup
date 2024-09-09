vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)
vim.keymap.set("n", "<leader>v", vim.cmd.Vex)
vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");

vim.keymap.set("n", "n", "nzzzv");
vim.keymap.set("n", "N", "Nzzzv");

vim.keymap.set("x", "<leader>P", "\"_dP");

vim.keymap.set("n", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>y", "\"+y");
vim.keymap.set("n", "<leader>Y", "\"+Y");
