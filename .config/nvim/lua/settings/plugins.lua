require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    sync_install = false,
    ignore_install = {},

    highlight = {
        enable = true,
        disable = { "help" },
        additional_vim_regex_highlighting = false,
    },
})
require("lualine").setup({
    options = {
        theme = "gruvbox",
    },
})
require("zen-mode").setup({
    window = {
        width = 100,
    },
})
require("colorizer").setup()
require("nvim-tree").setup()
