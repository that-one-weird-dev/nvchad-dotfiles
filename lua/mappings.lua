require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jk", "<ESC>")

map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

map("n", "<leader>fs", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")

map("n", "<leader>h", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>v", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "<leader>we", "<C-w>=", { desc = "Make splits even" })

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window right" })

map("n", "<leader>s%", "<cmd>source %<CR>", { desc = "source %" })

map("n", "<leader>th", function()
    require("nvchad.themes").open({
        style = "flat"
    })
end)
