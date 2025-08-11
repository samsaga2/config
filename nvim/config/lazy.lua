-- init lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
local plugin_dir = vim.fn.stdpath("config") .. "/plugins"
local plugin_list = {}
for _, file in ipairs(vim.fn.readdir(plugin_dir)) do
    if file:match("%.lua$") then
        local plugin_name = file:gsub("%.lua$", "")
        local plugin = require("plugins." .. plugin_name)
        table.insert(plugin_list, plugin)
    end
end
require("lazy").setup(plugin_list)

