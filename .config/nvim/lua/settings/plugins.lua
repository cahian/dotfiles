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
require("github-theme").setup({
    theme_style = "light",
})
require("lualine").setup({
    options = {
        theme = "auto",
    },
})
require("zen-mode").setup({
    window = {
        width = 100,
    },
})
require("colorizer").setup()
