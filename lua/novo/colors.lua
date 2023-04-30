color = color or "tokyonight-storm"
vim.g.tokyonight_transparent = vim.g.transparent_enabled
vim.cmd.colorscheme(color)
require("transparent").setup()
