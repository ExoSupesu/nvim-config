-- Define a function for key mappings
local map = function(mode, key, result, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, key, result, opts)
end

-- Map leader key to space
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Toggle line numbers with leader + n
map('n', '<Leader>n', ':set relativenumber!<CR>')

-- Save with leader + s
map('n', '<Leader>s', ':w<CR>')

-- Quit with leader + q
map('n', '<Leader>q', ':q<CR>')

-- Move between splits with Ctrl + hjkl
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

