vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
})

-- Keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- LSP configuration
local capabilities = require("cmp_nvim_lsp").default_capabilities()

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

vim.diagnostic.config({
	underline = true,
	update_in_insert = true,
})

vim.lsp.config("ruff", {
	capabilities = capabilities,
	filetypes = { "python" },
})

vim.lsp.enable({
	"texlab",
	"lua_ls",
	"ruff",
})
