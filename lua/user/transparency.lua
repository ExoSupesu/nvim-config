require('transparent').setup {
    extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
    },
}
require('transparent').clear_prefix('BufferLine')
require('transparent').clear_prefix('NeoTree')
require('transparent').clear_prefix('lualine')
vim.g.neovide_transparency = 0.8

