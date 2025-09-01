-- misc
vim.keymap.set("n", "<leader>ww", "<cmd>wall<CR>", { desc = "Save all buffers" })
vim.keymap.set("n", "<leader>bn", "bn", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "bp", { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>q', ':wqa<CR>', { desc = 'Save all & quit' })

vim.keymap.set("n", "<leader>bd", function()
    local current = vim.api.nvim_get_current_buf()
    local ok, _ = pcall(vim.cmd, "bprevious")
    if not ok then
        vim.cmd("bprevious")
    end
    vim.cmd("bdelete " .. current)
end, { desc = "Delete buffer" })

-- windows plits
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Close window" })
vim.keymap.set("n", "<leader>wp", "<C-w><C-p>", { desc = "Close previous windows" })

