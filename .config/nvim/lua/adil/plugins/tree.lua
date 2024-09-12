return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			vim.keymap.set("n", "<localleader>tt", "<cmd>NvimTreeToggle<CR>"),
		})
	end,
}
