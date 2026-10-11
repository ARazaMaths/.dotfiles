vim.pack.add({
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	{ src = "https://github.com/hrsh7th/cmp-buffer" },
	{ src = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips" },
})

local function setup_cmp()
	local cmp = require("cmp")

	require("cmp_nvim_ultisnips").setup({})

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
		}),
	})
end

vim.api.nvim_create_autocmd("InsertEnter", {
	once = true,
	callback = setup_cmp,
})
