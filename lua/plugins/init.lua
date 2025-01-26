return {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },

    -- Lsp
    { "Decodetalkers/csharpls-extended-lsp.nvim" },

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
            conf.defaults.mappings.i = {
                ["<C-j>"] = require("telescope.actions").move_selection_next,
                ["<C-k>"] = require("telescope.actions").move_selection_previous,
                ["<Esc>"] = require("telescope.actions").close,
                ["jk"] = require("telescope.actions").close,
            }

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
}
