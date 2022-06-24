require("github-theme").setup({
  theme_style = "light",
})
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
require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = true,
        folder_arrow = false,
        git = false,
      },
      glyphs = {
        folder = {
          default = ">",
          open = "V",
          empty = ">",
          empty_open = "V",
          symlink = "->",
          symlink_open = "-V",
        },
      },
    },
    special_files = {},
  },
})
require("lualine").setup({
  options = {
    theme = "auto",
    section_separators = '',
    component_separators = '',
  },
})
require("zen-mode").setup({
  window = {
    width = 83,
  },
})
require("colorizer").setup()
