-- return {
--     "Mofiqul/dracula.nvim",
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme("dracula")
--     end,
-- }
return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd.colorscheme("tokyonight-storm")
    end,
}

