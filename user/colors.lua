color = color or "onedark_vivid"
vim.g.tokyonight_transparent = vim.g.transparent_enabled
vim.cmd.colorscheme(color)
require("transparent").setup()
