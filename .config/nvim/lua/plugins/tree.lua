vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

require("nvim-tree").setup({})

vim.keymap.set("n", "<localleader>tt", "<cmd>NvimTreeToggle<CR>")
