return {
    "stevearc/conform.nvim",
    opts = {
        format_on_save = false,
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            objc = { "clang_format" },
            objcpp = { "clang_format" },
        },
    },
    config = function()
        vim.api.nvim_set_keymap(
            'n', '<leader>cf', ':ConformFormat<CR>',
            { noremap = true, silent = true }
        )
    end,
}
