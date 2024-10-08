-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configuration
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_close = 0
vim.g.nvim_tree_indent_markers = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()


-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd([[
  autocmd VimEnter * NvimTreeToggle
]])

-- keymaps
vim.keymap.set('n', '<space>n', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<space>e', ':NvimTreeToggle<CR>')

