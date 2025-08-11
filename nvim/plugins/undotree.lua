return {
    "https://github.com/mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>",
        { desc = "Toggle undotree" })
    end,
}


