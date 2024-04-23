local vscode = require('vscode-neovim')

vim.g.mapleader = ' '

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- yanked color
-- Obtener el color de resaltado de selección en modo visual
local visual_selection_color_bg = vim.fn.synIDattr(vim.fn.hlID('Visual'), 'bg', 'gui')

-- Configuración para resaltar temporalmente las líneas yankadas
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='IncSearch', timeout=350}
  augroup END
]])

-- Función para aplicar el color de selección visual al resaltado de yank
function set_yank_highlight()
  vim.cmd("highlight YankHighlight guibg=" .. visual_selection_color_bg)
end

-- Llama a la función para establecer el resaltado de yank
set_yank_highlight()

-- Deshabilitar el resaltado de la línea actual (CursorLine) al tener el cursor sobre ella
vim.cmd('highlight clear CursorLine')

-- Importar la función vim.api.nvim_set_keymap
local nvim_set_keymap = vim.api.nvim_set_keymap

-- Abre el archivo keybindings.lua en Visual Studio Code
-- nvim_set_keymap('n', '<leader>c', ':vs ~/.config/nvim/vscode/keybindings.lua<CR>', { noremap = true, silent = true })

-- Cierra el editor actual
nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

-- Pega el texto sin reemplazar el portapapeles
nvim_set_keymap('v', 'p', '"_dP', { noremap = true, silent = true })

-- Limpia la resaltado de búsqueda
nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Cambiar entre pestañas con H y L
nvim_set_keymap('n', 'H', ':tabprevious<CR>', { noremap = true, silent = true })
nvim_set_keymap('n', 'L', ':tabnext<CR>', { noremap = true, silent = true })

-- Moverse entre divisiones con Ctrl+j, k, h, l
nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Ajustar el tamaño de las divisiones con Ctrl(up,down,right,left)
nvim_set_keymap('n', '<C-Up>', '<C-w>+', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-Down>', '<C-w>-', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-Right>', '<C-w>>', { noremap = true, silent = true })
nvim_set_keymap('n', '<C-Left>', '<C-w><', { noremap = true, silent = true })

-- Buscar TODO con <space>st
nvim_set_keymap('n', '<space>st', '/TODO<CR>', { noremap = true, silent = true })

-- Abre el archivo keybindings.lua en Visual Studio Code
vim.cmd('nmap <leader>c :e ~/.config/nvim/vscode/keybindings.lua<CR>')


-- Skip folds
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- search ignoring case
vim.opt.ignorecase = true

-- search smart case
vim.opt.smartcase = true