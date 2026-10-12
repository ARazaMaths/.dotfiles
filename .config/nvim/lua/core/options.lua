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
vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_gb"
	end,
})
opt.autochdir = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.api.nvim_set_keymap("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { noremap = true })
vim.diagnostic.config({ virtual_text = true })
