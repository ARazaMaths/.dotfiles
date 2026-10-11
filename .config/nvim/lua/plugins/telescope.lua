vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/debugloop/telescope-undo.nvim" },
})

local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.load_extension("fzf")
telescope.load_extension("undo")

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
