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
    theme_style = "dark",
})
require("lualine").setup({
    options = {
        theme = "auto",
        section_separators = '',
        component_separators = ''
    },
})
require("zen-mode").setup({
    window = {
        width = 83,
    },
})
require("nvim-tree").setup()
require("colorizer").setup()
