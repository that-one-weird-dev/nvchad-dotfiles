return {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "rachartier/tiny-code-action.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" },
        },
        event = "LspAttach",
        config = function()
            require('tiny-code-action').setup()
        end
    },
    {
        "tpope/vim-fugitive",
        lazy = false,
    },

    -- Lsp
    { "Decodetalkers/csharpls-extended-lsp.nvim" },

    -- AI
    -- {
    --     "yetone/avante.nvim",
    --     events = "VeryLazy",
    --     version = false,
    --     lazy = false,
    --     opts = require("configs.avante"),
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "MunifTanjim/nui.nvim",
    --         "nvim-telescope/telescope.nvim",
    --         "hrsh7th/nvim-cmp",
    --     },
    -- },
    {
        "supermaven-inc/supermaven-nvim",
        lazy = false,
        config = function()
            require("supermaven-nvim").setup({})
        end,
    },

    -- Overrides
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css"
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        opts = function(_, conf)
            conf.defaults = vim.tbl_deep_extend('force', conf.defaults or {}, {
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<Esc>"] = require("telescope.actions").close,
                        ["jk"] = require("telescope.actions").close,
                    }
                },
                file_ignore_patterns = { "%.tres", "%.tscn", "%.uid", "%.import", "%.png", "%.glb" }
            })

            return conf
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, conf)
            conf.mapping["<C-k>"] = require("cmp").mapping.select_prev_item()
            conf.mapping["<C-j>"] = require("cmp").mapping.select_next_item()

            return conf
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = function(_, conf)
            conf.filters = {
                dotfiles = false,
                custom = { "*.uid" },
            }

            return conf
        end,
    },
}
