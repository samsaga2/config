return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require('dap')

        -- Configurar LLDB
        dap.adapters.lldb = {
            type = 'executable',
            command = '/usr/bin/lldb-dap-20',
            name = "lldb"
        }

        dap.configurations.cpp = {
            {
                name = "Debug",
                type = "lldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                args = {},
            },
        }

        dap.configurations.c = dap.configurations.cpp
    end
}
