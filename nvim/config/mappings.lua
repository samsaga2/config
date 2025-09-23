-- misc
vim.keymap.set("n", "<leader>ww", "<cmd>wall<CR>", { desc = "Save all buffers" })
vim.keymap.set("n", "<leader>bn", "bn", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "bp", { desc = "Prev buffer" })
vim.keymap.set('n', '<leader>q', ':wqa<CR>', { desc = 'Save all & quit' })
vim.keymap.set("n", "<leader>bd", "bd", { desc = "Delete buffer" })

-- windows plits
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Close window" })
vim.keymap.set("n", "<leader>wp", "<C-w><C-p>", { desc = "Close previous windows" })

-- which key groups
local wk = require("which-key")
wk.add({
    { "<leader>b", group = "Buffers"},
    { "<leader>w", group = "Windows"},
    { "<leader>c", group = "Code"},
    { "<leader>f", group = "Find"},
    { "<leader>g", group = "Git"},
    { "<leader>p", group = "Project"},
})
