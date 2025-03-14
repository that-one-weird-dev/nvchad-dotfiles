require "nvchad.options"

local o = vim.o

o.wrap = false
o.relativenumber = true
o.shiftwidth = 4
o.tabstop = 4

vim.api.nvim_create_autocmd("FileType", {
    pattern = "gdscript",
    callback = function()
        vim.opt_local.expandtab = false
    end,
})
