-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(m, k, v, opts)
  vim.keymap.set(m, k, v, vim.tbl_extend("force", { silent = true }, opts or {}))
end

-- Cambiar búsqueda de archivos
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Buscar archivo en CWD" })
vim.keymap.set(
  "n",
  "<leader>fF",
  "<cmd>Telescope find_files cwd=function() return vim.fn.getcwd(vim.fn.finddir('.git', vim.fn.getcwd() .. ';')) end<CR>",
  { desc = "Buscar archivo en root" }
)

-- Cambiar búsqueda de palabras
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", { desc = "Buscar palabra en CWD" })
vim.keymap.set(
  "n",
  "<leader>sG",
  "<cmd>Telescope live_grep cwd=function() return vim.fn.getcwd(vim.fn.finddir('.git', vim.fn.getcwd() .. ';')) end<CR>",
  { desc = "Buscar palabra en root" }
)
