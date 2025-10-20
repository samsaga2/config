return {
    "https://github.com/NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim"
    },
    config = function()
        require("neogit").setup({
            kind = "split",
            integrations = { diffview = true },
        })
        vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<CR>", { desc = "Git status" })
        vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Cerrar Diffview" })
    end,
}

