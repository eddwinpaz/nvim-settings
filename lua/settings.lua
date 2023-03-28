-- Neovim API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General
g.mapleader = ","

-- UI
opt.number = true
opt.encoding="utf-8"
opt.compatible=false
opt.hlsearch=true
opt.relativenumber = true
opt.laststatus = 2
opt.vb = true
opt.ruler = true
opt.spelllang="en_us"
opt.autoindent=true
opt.colorcolumn="120"
opt.textwidth=120
opt.mouse="a"
opt.clipboard="unnamed"
opt.scrollbind=false
opt.wildmenu=true