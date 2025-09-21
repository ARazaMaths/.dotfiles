return {
	"neovim/nvim-lspconfig",
	dependencies = { "hrsh7th/cmp-nvim-lsp" },

	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("texlab", {
			capabilities = capabilities,
		})

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})

		vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
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
	end,

	init = function()
		vim.keymap.set("n", "K", vim.lsp.buf.hover)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition)
	end,
}
