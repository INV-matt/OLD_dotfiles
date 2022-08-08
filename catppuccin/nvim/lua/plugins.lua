require ('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	
	-- CMP --
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'

    -- SNIPPETS --
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    -- LSP --
    use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- SIDEBAR --
	use { 'notjedi/nvim-rooter.lua',
    		config = function() require'nvim-rooter'.setup() end
	}
	
	-- LUALINE --
	use { 'nvim-lualine/lualine.nvim',
	  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	

    	use 'PotatoesMaster/i3-vim-syntax'
    	use 'kovetskiy/sxhkd-vim'
    	use 'vim-python/python-syntax'
    	use 'ap/vim-css-color'

    	use 'tpope/vim-surround'
    
	-- COLORSCHEME --
	use { "catppuccin/nvim", as = "catppuccin" }

	use { 	"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use { 'kyazdani42/nvim-tree.lua',
        	requires = { 'kyazdani42/nvim-web-devicons' }
   	 }

    
	
end)
