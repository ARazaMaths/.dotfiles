return {
	"startup-nvim/startup.nvim",
	dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
	config = function()
		require("startup").setup()
	end,
}
