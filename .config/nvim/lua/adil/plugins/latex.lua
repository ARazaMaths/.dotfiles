return {
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "zathura_simple"
			vim.g.vimtex_quickfix_mode = 0
		end,
	},

	{
		"KeitaNakamura/tex-conceal.vim",
		init = function()
			vim.g.tex_conceal = "abdmg"
		end,
	},
}
