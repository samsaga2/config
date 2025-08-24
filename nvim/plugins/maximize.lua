return {
    {
        'declancm/maximize.nvim',
        config = function()
            require('maximize').setup()

            vim.keymap.set('n', '<leader>wm', function()
                require('maximize').toggle()
            end, { noremap = true, silent = true })
        end
    },
}
