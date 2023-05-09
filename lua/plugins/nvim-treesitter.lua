local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then return end

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

treesitter.setup {
    ensure_installed = {
        "dockerfile", "gitignore", "go", "gomod", "gowork", "javascript",
        "json", "lua", "markdown", "proto", "python", "rego", "ruby", "sql",
        "svelte", "yaml", "typescript", "vim" 
    },
    indent = {enable = true},
    auto_install = true,
    sync_install = false,
    highlight = {
        enable = true,
        disable = {"markdown"}
        --   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        --   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        --   -- Using this option may slow down your editor, and you may see some duplicate highlights.
        --   -- Instead of true it can also be a list of languages
        --   additional_vim_regex_highlighting = false,
    },
    autotag = {
    	enable = true,
    }
}

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
