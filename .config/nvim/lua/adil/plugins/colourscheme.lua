return {

	{ "rose-pine/neovim", name = "rose-pine" },

	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
