return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        -- Keymaps cuando el LSP se adjunta a un buffer
        lsp_zero.on_attach(function(_, bufnr)
            lsp_zero.default_keymaps({ buffer = bufnr })
        end)

        -- Configurar Mason
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright",
                "clangd",
                "cmake",
                "lua_ls",
            },
            handlers = {
                lsp_zero.default_setup,
            },
        })

        -- Configurar autocompletado
        local cmp = require("cmp")
        local cmp_lsp = require("cmp_nvim_lsp")

        cmp.setup({
            mapping = {
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
            },
        })

        -- Configurar capacidades del cliente LSP con autocompletado
        local capabilities = cmp_lsp.default_capabilities()

        -- Integrar capacidades en cada LSP
        lsp_zero.set_server_config({
            capabilities = capabilities,
        })
    end,
}
