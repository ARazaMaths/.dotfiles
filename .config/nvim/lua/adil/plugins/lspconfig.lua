return {
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",

	config = function()
		local lspconfig = require("lspconfig")

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig["texlab"].setup({
			capabilities = capabilities,
		})

		lspconfig["pyright"].setup({
			capabilities = capabilities,
		})

		lspconfig["ltex"].setup({
			capabilities = capabilities,
			settings = {
				ltex = {
					language = "en-GB",
				},
			},
			on_attach = on_attach,
		})

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})

		vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			underline = true,
			virtual_text = { spacing = 4 },
			update_in_insert = true,
		})
	end,

	init = function()
		vim.keymap.set("n", "K", vim.lsp.buf.hover)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition)
	end,
}
