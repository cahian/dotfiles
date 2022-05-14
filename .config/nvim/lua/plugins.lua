return require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }
    use { "neovim/nvim-lspconfig" }
    use { "mboughaba/i3config.vim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "norcalli/nvim-colorizer.lua" }
    use { "folke/zen-mode.nvim" }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    }
end)
