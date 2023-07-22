local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})


-- Formatting in normal mode
vim.api.nvim_set_keymap('n', '<Leader>f', '<Plug>(Prettier)', {})

-- Range formatting in visual mode
vim.api.nvim_set_keymap('x', '<Leader>f', '<Plug>(Prettier)', {})


