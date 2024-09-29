return {

	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"SirVer/ultisnips",

		"quangnguyen30192/cmp-nvim-ultisnips",
	},

	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["UltiSnips#Anon"](args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{
					name = "nvim_lsp",
					entry_filter = function(entry, ctx)
						return cmp.lsp.CompletionItemKind.Text ~= entry:get_kind()
					end,
				},
				{ name = "path" },
				{ name = "ultisnips" },
				{ name = "buffer" },
			}),
		})
	end,

	init = function()
		vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
		vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }
	end,
}
