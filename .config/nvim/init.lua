-- init.lua

if vim.g.vscode then
	-- Carga los keybindings de VSCode
	dofile(vim.fn.stdpath('config') .. '/vscode/keybindings.lua')
else
	-- Carga la configuración de Neovim con lazy.nvim
	require("config.lazy")
end
