-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(m, k, v, opts)
  vim.keymap.set(m, k, v, vim.tbl_extend("force", { silent = true }, opts or {}))
end
