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

local function respace()
    vim.cmd(":%s/    /\t/g")
end

vim.api.nvim_create_user_command('Respace', respace, {})
vim.api.nvim_create_user_command('Res', respace, {})
