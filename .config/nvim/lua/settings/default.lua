local api = vim.api
local cmd = vim.cmd
local opt = vim.opt

opt.showmode = false
opt.termguicolors = true
-- opt.background = "dark"
-- cmd([[colorscheme gruvbox]])

opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

api.nvim_create_autocmd("FileType", {
    pattern = { "html", "xml", "yml", "json", "css", "js" },
    callback = function()
        opt.expandtab = true
        opt.shiftwidth = 2
        opt.softtabstop = 2
        opt.tabstop = 2
    end,
})
api.nvim_create_autocmd("FileType", {
    pattern = { "make", "c", "go" },
    callback = function()
        opt.expandtab = false
        opt.shiftwidth = 8
        opt.softtabstop = 8
        opt.tabstop = 8
    end,
})

opt.number = true
opt.relativenumber = true
