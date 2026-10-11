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
