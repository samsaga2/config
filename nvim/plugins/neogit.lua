return {
    "https://github.com/NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("neogit").setup()
        vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>", 
        { desc = "Git status" })
    end,
}

