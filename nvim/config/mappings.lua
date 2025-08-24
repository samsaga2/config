-- misc
vim.keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Save current file" })
vim.keymap.set("n", "<leader>W", "<cmd>wall<CR>", { desc = "Save all files" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Buffer delete" })
vim.keymap.set("n", "<leader>bn", "bn", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "bp", { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>q', ':wqa<CR>', { desc = 'Save all & quit' })

-- windows plits
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Close window" })
vim.keymap.set("n", "<leader>wp", "<C-w><C-p>", { desc = "Close previous windows" })

-- conform
vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({ async = true })
end, { desc = "Clang format" })
