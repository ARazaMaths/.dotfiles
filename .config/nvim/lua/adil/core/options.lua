local opt = vim.opt

vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.signcolumn = "yes:1"
opt.clipboard = "unnamedplus"
opt.conceallevel = 1
opt.spell = true
opt.spelllang = en_gb
opt.autochdir = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.api.nvim_set_keymap("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { noremap = true })
