require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua" }, -- Install parsers for supported languages
    highlight = {
        enable = true,          -- Enable syntax highlighting
        use_languagetree = true, -- Use the language tree for more accurate highlighting
    },
    indent = {
        enable = true, -- Enable indenting
    },
    autotag = {
        enable = true, -- Enable auto-closing and auto-pairing of tags
    },
}

