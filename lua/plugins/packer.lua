local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end
return require('packer').startup(function(use)

    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Theme color
    use 'Shatur/neovim-ayu'

    -- Git manager
    use 'lewis6991/gitsigns.nvim'

    -- Comments
    use "numToStr/Comment.nvim"

    -- Nvim Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional
        }
    }
    use {
        "nvim-treesitter/nvim-treesitter", -- https://github.com/nvim-treesitter/nvim-treesitter
        run = ":TSUpdate"
    }
    use "nvim-treesitter/nvim-treesitter-textobjects" -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects

    -- Telescope
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use {        'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}, branch = '0.1.x' }

    -- Golang
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support

    -- LSP
   use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  } 

end)
