vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
})

-- LSP configuration
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.diagnostic.config({
	underline = true,
	update_in_insert = true,
})

vim.lsp.config("texlab", {
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.config("pyright", {
	capabilities = capabilities,
})

vim.lsp.enable({
	"texlab",
	"lua_ls",
	"pyright",
})
