vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
	},
	{
		src = "https://github.com/windwp/nvim-ts-autotag",
	},
})

-- Install the parsers you need
require("nvim-treesitter").install({
	"python",
	"lua",
})

-- Enable Treesitter highlighting for these filetypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "lua" },
	callback = function()
		vim.treesitter.start()
	end,
})

-- Enable automatic HTML/XML tag closing
require("nvim-ts-autotag").setup()
