return require("packer").startup(function(use)
    use { "mboughaba/i3config.vim" }
    use { "wbthomason/packer.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "norcalli/nvim-colorizer.lua" }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use { 
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
end)
