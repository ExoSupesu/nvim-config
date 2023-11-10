local M = {}

-- Function to set the colorscheme
M.set_theme = function(theme)
    vim.cmd('colorscheme ' .. theme)
end

return M

