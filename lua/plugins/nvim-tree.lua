-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configuration
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_indent_markers = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.cmd([[
    nnoremap - :NvimTreeToggle<CR>
]])

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

-- keymaps
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')
