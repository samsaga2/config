return  {
    "Shatur/neovim-cmake",
    config = function()
        vim.g.cmake_link_compile_commands = 1
        vim.g.cmake_generator = "Ninja"

        vim.api.nvim_set_keymap('n', '<leader>cg', ':CMake configure -G Ninja<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cb', ':CMake build_all<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cT', ':CMake select_build_type<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cd', ':CMake debug<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cr', ':CMake run<CR>', { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>cc", function()
            vim.cmd("cclose")
            vim.cmd("lclose")
        end, { silent = true })
        vim.keymap.set("n", "<leader><F8>", ":cnext<CR>zz", { desc = "Next build error" })

        -- close quickfix if there are no errors
        vim.api.nvim_create_autocmd("User", {
            pattern = "CMakeBuildFinished",
            callback = function()
                if vim.fn.getqflist({ size = 0 }).size == 0 then
                    pcall(vim.cmd, "cclose")
                end
            end,
        })
    end
}
