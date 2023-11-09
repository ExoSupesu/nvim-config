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

-- telescope
map('n', '<Leader>f', [[:Telescope find_files<CR>]], { noremap = true, silent = true })
map('n', '<Leader>g', [[:Telescope live_grep<CR>]], { noremap = true, silent = true })
map('n', '<Leader>b', [[:Telescope buffers<CR>]], { noremap = true, silent = true })
map('n', '<Leader>h', [[:Telescope help_tags<CR>]], { noremap = true, silent = true })
map('n', '<Leader>gc', [[:Telescope git_commits<CR>]], { noremap = true, silent = true })
map('n', '<Leader>gs', [[:Telescope git_status<CR>]], { noremap = true, silent = true })
map('n', '<Leader>lr', [[:Telescope lsp_references<CR>]], { noremap = true, silent = true })
map('n', '<Leader>ld', [[:Telescope lsp_document_diagnostics<CR>]], { noremap = true, silent = true })
map('n', '<Leader>lw', [[:Telescope lsp_workspace_diagnostics<CR>]], { noremap = true, silent = true })

--Neotree
map('n','<Leader>e',[[ :Neotree reveal<cr>]],{ noremap = true, silent = true })
