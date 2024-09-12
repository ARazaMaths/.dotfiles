return {
	{
		"NeogitOrg/neogit",
		dependencies = { "sindrets/diffview.nvim" },
		config = true,
	},

	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
}
