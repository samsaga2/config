vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0

vim.opt.colorcolumn = "80"
vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = false
vim.opt.autochdir = true
vim.opt.swapfile = false
vim.opt.expandtab = true

local config_path = vim.fn.stdpath("config")
package.path = package.path .. ";" .. config_path .. "/?.lua;" .. config_path .. "/?/init.lua"

require("config.lazy")
require("config.mappings")
