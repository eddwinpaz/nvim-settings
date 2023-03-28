local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'
	-- Theme color
	use 'Shatur/neovim-ayu'
	-- Nvim Tree
	use {
           'nvim-tree/nvim-tree.lua',
           requires = {
              'nvim-tree/nvim-web-devicons', -- optional
           },
        }
	-- Telescope
	use {
	   'nvim-telescope/telescope-fzf-native.nvim',
	   run = 'make',
   	}
	use {
	   'nvim-telescope/telescope.nvim',
	   requires = { 
		   'nvim-lua/plenary.nvim', 
           },
	   branch = '0.1.x',
	}
	-- Golang
	use "fatih/vim-go"  
	use "hrsh7th/nvim-cmp"                    -- https://github.com/hrsh7th/nvim-cmp

end)
