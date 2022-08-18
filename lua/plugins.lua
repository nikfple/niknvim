require('packer').startup(function(use)

	-- Plugin package manager
  use 'wbthomason/packer.nvim' 

	-- Rose pine colorscheme
	use 'rose-pine/neovim'

	-- Lua functions
	use 'nvim-lua/plenary.nvim'

	-- Icons
	use 'kyazdani42/nvim-web-devicons'

	-- Popup UI
	use 'MunifTanjim/nui.nvim'

	-- File explorer
	use {
		'nvim-neo-tree/neo-tree.nvim', 
		config = function() require 'configs.neo-tree' end 
	}
	
	-- Syntax higlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function() require 'configs.treesitter' end 
	}

	-- Parenthesis highlighting
	use 'p00f/nvim-ts-rainbow'

	-- Autoclose tags
	use 'windwp/nvim-ts-autotag'

	-- Context based commenting
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- Indent detection
	use 'Darazaki/indent-o-matic'

	-- Indentation line
	use { 
		'lukas-reineke/indent-blankline.nvim',
		config = function() require 'configs.indent-blankline' end 
	}

	-- Commenting
	use {
		'numToStr/Comment.nvim', 
		config = function() require 'configs.Comment' end 
	}

	-- Autopairs
	use {
		'windwp/nvim-autopairs',
		config = function() require 'configs.autopairs' end 
	}

	-- Package Installer
	use {
		'williamboman/mason.nvim', 
		config = function() require 'configs.mason' end 
	}

	use {
		'WhoIsSethDaniel/mason-tool-installer.nvim',
		config = function() require 'configs.mason-tool-installer' end 
	}
 
  -- Mason LSP Server Config
  use {
  	'williamboman/mason-lspconfig.nvim',
		config = function() require 'configs.lsp-configs' end 
  }

	-- LSP Server config
	use 'neovim/nvim-lspconfig'

	-- LSP Icons
	use 'onsails/lspkind.nvim'

	-- Snippet collection
	use 'rafamadriz/friendly-snippets'

  -- Snippet engine
  use {
  	'L3MON4D3/LuaSnip',
    config = function() require "configs.luasnip" end
  }

  -- Completion engine
  use { 
  	'hrsh7th/nvim-cmp',
    config = function() require "configs.cmp" end,
  }

	-- Snippet completion source
  use 'saadparwaiz1/cmp_luasnip'

  -- Buffer completion source
  use 'hrsh7th/cmp-buffer'

  -- Path completion source
  use 'hrsh7th/cmp-path'

  -- LSP completion source
  use 'hrsh7th/cmp-nvim-lsp'

	-- Cmd completeion source
	use 'hrsh7th/cmp-cmdline'


end)
