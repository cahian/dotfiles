return require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }
    -- use { "neovim/nvim-lspconfig" }
    use { "mboughaba/i3config.vim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "projekt0n/github-nvim-theme" }
    use { "norcalli/nvim-colorizer.lua" }
    use { "folke/zen-mode.nvim" }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use {
        "kyazdani42/nvim-tree.lua",
        requires = { "kyazdani42/nvim-web-devicons" }
    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons" }
    }
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    }
end)
