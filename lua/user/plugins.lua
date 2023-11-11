local plugins = {
    --ColorSchemes
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require "nordic".load()
        end
    },

    --  LSP
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "VonHeikemen/lsp-zero.nvim",        branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },

    --Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    },

    --telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    --neotree
    { "MunifTanjim/nui.nvim" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            {
                "s1n7ax/nvim-window-picker",
                version = "2.*",
                config = function()
                    require "window-picker".setup({
                        filter_rules = {
                            include_current_win = false,
                            autoselect_one = true,
                            bo = {
                                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                                buftype = { "terminal", "quickfix" },
                            },
                        },
                    })
                end,
            },
        },
        config = function()
            -- Set up custom diagnostic signs
            vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
            vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
            vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
            vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
        end,
    },
    -- Comment
    {
        "numToStr/Comment.nvim",
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    { "uga-rosa/ccc.nvim" },
    { "echasnovski/mini.pairs", version = false },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true }
    },
    { "akinsho/bufferline.nvim",   version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
    { "stevearc/conform.nvim" },
    { "jakewvincent/mkdnflow.nvim" },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup()
            -- refer to `configuration to change defaults`
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },

    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    { "akinsho/toggleterm.nvim",   version = "*", config = true },
    { "xiyaowong/transparent.nvim" },
    -- noice.nvim
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
    { "folke/neodev.nvim" }

}
return plugins

