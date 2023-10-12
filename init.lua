vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"
local is_vscode = vim.g.vscode

require("keybindings")

if is_vscode then  
	require("vscode")
else
	if is_mac then
		require("mac")
	elseif is_win then
		require("win")
	end
	require("plugin_configs")
	require("plugin_keybindings")

end

