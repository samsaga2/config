return {
    "https://github.com/mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<leader>bu", "<cmd>UndotreeToggle<CR>",
        { desc = "Toggle undotree" })
    end,
}


