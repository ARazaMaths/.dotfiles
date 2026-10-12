require("core.options")
local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local files = vim.fn.glob(plugin_dir .. "/*.lua", false, true)

table.sort(files)

for _, file in ipairs(files) do
	local module = "plugins." .. vim.fn.fnamemodify(file, ":t:r")
	local ok, err = pcall(require, module)

	if not ok then
		vim.notify(("Error loading %s:\n%s"):format(module, err), vim.log.levels.ERROR)
	end
end

-- Add a border to lean.nvim's enhanced hover popup
do
	local util = vim.lsp.util

	if not util._lean_hover_border_wrapped then
		local original = util.open_floating_preview

		util.open_floating_preview = function(contents, syntax, opts, ...)
			if opts and opts.focus_id == "lean_hover" then
				opts = vim.tbl_extend("force", opts, {
					border = "rounded",
				})
			end

			return original(contents, syntax, opts, ...)
		end

		util._lean_hover_border_wrapped = true
	end
end
