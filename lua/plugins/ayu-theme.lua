local cmd = vim.cmd
local opt = vim.opt

opt.termguicolors = false

cmd [[colorscheme ayu]]
require('ayu').setup({
    mirage = true,
    overrides = {
    },
})
