require "nvchad.mappings"

local map = vim.keymap.set

-- Basic
map("i", "jk", "<ESC>")

map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- Buffer
map("n", "<leader>fs", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")

-- Windows
map("n", "<leader>h", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>v", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "<leader>we", "<C-w>=", { desc = "Make splits even" })

-- Navigation
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window right" })

-- Utils
map("n", "<leader>s%", "<cmd>source %<CR>", { desc = "source %" })

-- Lsp
map("n", "<leader>lf", function()
    vim.diagnostic.open_float()
end)
map("n", "<leader>la", function()
	require("tiny-code-action").code_action()
end)
map("n", "<leader>th", function()
    require("nvchad.themes").open({
        style = "flat"
    })
end)
