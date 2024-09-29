return {
	"SirVer/ultisnips",

	init = function()
		vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
		vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }
	end,
}
