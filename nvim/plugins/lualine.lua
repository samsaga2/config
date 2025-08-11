return {
    "https://github.com/nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require("lualine").setup()
    end,
}

