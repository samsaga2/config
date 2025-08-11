-- misc
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>W", "<cmd>wall<CR>", { desc = "Save all files" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Buffer delete" })
vim.keymap.set("n", "<leader>bn", "bn", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "bp", { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>q', ':wqa<CR>', { desc = 'Save all & quit' })

-- conform
vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({ async = true })
end, { desc = "Clang format" })
