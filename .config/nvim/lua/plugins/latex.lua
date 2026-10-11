vim.g.vimtex_view_method = "zathura_simple"
vim.g.latex_view_general_viewer = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_matchparen_enable = 0
vim.g.vimtex_compiler_progname = "nvr"

vim.g.tex_conceal = "abdmg"

vim.pack.add({
	{ src = "https://github.com/lervag/vimtex" },
	{ src = "https://github.com/KeitaNakamura/tex-conceal.vim" },
})
