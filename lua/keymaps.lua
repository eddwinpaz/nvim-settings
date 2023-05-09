-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- map('i', '<C-h>', '<left>', default_opts)
-- map('i', '<C-j>', '<down>', default_opts)
-- map('i', '<C-k>', '<up>', default_opts)
-- map('i', '<C-l>', '<right>', default_opts)

-- map('n', 'K', ':m .-2<CR>==', {noremap = true, silent = true})
-- map('n', 'J', ':m .+1<CR>==', {noremap = true, silent = true})
-- map('v', 'K', "'<-2<CR>gv=gv", {noremap = true, silent = true})
-- map('v', 'J', "'>+1<CR>gv=gv", {noremap = true, silent = true})
