return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader><leader>", builtin.git_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
        vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Search in buffer" })
        vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })
        vim.keymap.set("n", "<leader>km", builtin.keymaps, { desc = "Keymaps" })

        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = "move_selection_previous",
                        ["<C-j>"] = "move_selection_next",
                        ["<C-q>"] = "close",
                    },
                },
            },
        }
    end
}
