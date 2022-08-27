local plugins = {
  -- Plugin manager
  ['wbthomason/packer.nvim'] = {},

  -- Optimiser
  ['lewis6991/impatient.nvim'] = {},

	-- Lua functions
  ['nvim-lua/plenary.nvim'] = {},

  -- Colorscheme
  ['rebelot/kanagawa.nvim'] = {},
  ['EdenEast/nightfox.nvim'] = {},

  -- Neovim UI Enhancer
  -- ['stevearc/dressing.nvim'] = {
  --   config = function() require 'nik.configs.dressing' end,
  -- },

  -- Icons
  ['kyazdani42/nvim-web-devicons'] = {
    config = function() require 'nik.configs.icons' end,
  },

	-- Parenthesis highlighting
  ['p00f/nvim-ts-rainbow'] = { after = 'nvim-treesitter' },

  -- Autoclose tags
  ['windwp/nvim-ts-autotag'] = { after = 'nvim-treesitter' },

  -- Context based commenting
  ['JoosepAlviste/nvim-ts-context-commentstring'] = { after = 'nvim-treesitter' },

  -- Syntax highlighting
  ['nvim-treesitter/nvim-treesitter'] = {
    run = ':TSUpdate',
    config = function() require 'nik.configs.treesitter' end,
  },

  -- Snippet collection
  ['rafamadriz/friendly-snippets'] = {},

  -- Snippet engine
  ['L3MON4D3/LuaSnip'] = {
    config = function() require 'nik.configs.luasnip' end,
  },

  -- Completion engine
  ['hrsh7th/nvim-cmp'] = {
    event = 'InsertEnter',
    config = function() require 'nik.configs.cmp' end,
  },

  -- Snippet completion source
  ['saadparwaiz1/cmp_luasnip'] = {
    after = 'nvim-cmp',
  },

  -- Buffer completion source
  ['hrsh7th/cmp-buffer'] = {
    after = 'nvim-cmp',
  },

  -- Path completion source
  ['hrsh7th/cmp-path'] = {
    after = 'nvim-cmp',
  },

  -- LSP completion source
  ['hrsh7th/cmp-nvim-lsp'] = {
    after = 'nvim-cmp',
  },

  -- Package Manager
  ['williamboman/mason.nvim'] = {
  	config = function() require 'nik.configs.mason' end
  },

  ['WhoIsSethDaniel/mason-tool-installer.nvim'] = {
    after = 'mason.nvim',
    config = function() require 'nik.configs.mason-tool-installer' end,
  },

  -- Built-in LSP
  ['neovim/nvim-lspconfig'] = {},

  -- LSP manager
  ['williamboman/mason-lspconfig.nvim'] = {
    after = { 'mason.nvim', 'nvim-lspconfig' },
    config = function() require 'nik.configs.lsps' end,
  },

    -- LSP Icons
  ['onsails/lspkind.nvim'] = {
    module = 'lspkind',
    config = function() require 'nik.configs.lspkind' end,
  },

  -- LSP symbols
  -- ['stevearc/aerial.nvim'] = {
  --   module = 'aerial',
  --   cmd = { 'AerialToggle', 'AerialOpen', 'AerialInfo' },
  --   config = function() require 'configs.aerial' end,
  -- },

  -- Formatting and linting
  -- ['jose-elias-alvarez/null-ls.nvim'] = {
  --   event = { 'BufRead', 'BufNewFile' },
  --   config = function() require 'configs.null-ls' end,
  -- },

	-- UI Component
	['MunifTanjim/nui.nvim'] = {},

	-- File explorer
  ['nvim-neo-tree/neo-tree.nvim'] = {
    setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
    config = function() require 'nik.configs.neo-tree' end,
  },

	-- Bufferline
  ['akinsho/bufferline.nvim'] = {
    config = function() require 'nik.configs.bufferline' end,
  },

  -- Better buffer closing
  ['famiu/bufdelete.nvim'] = { cmd = { 'Bdelete', 'Bwipeout' } },

  -- Commenting
  ['numToStr/Comment.nvim'] = {
    module = { 'Comment', 'Comment.api' },
    config = function() require 'nik.configs.comment' end,
  },

  -- Indentation
  ['lukas-reineke/indent-blankline.nvim'] = {
    config = function() require 'nik.configs.indent-blankline' end,
  },

  -- Indent detection
  ['Darazaki/indent-o-matic'] = {
    config = function() require 'nik.configs.indent-o-matic' end,
  },

  -- Fuzzy finder
  ['nvim-telescope/telescope.nvim'] = {
    config = function() require 'nik.configs.telescope' end,
  },

  -- Status line
  ['feline-nvim/feline.nvim'] = {
    config = function() require 'nik.configs.feline' end,
  },

  -- Autopairs
  ['windwp/nvim-autopairs'] = {
    config = function() require 'nik.configs.autopairs' end,
  },

  -- Smarter Splits
  ['mrjones2014/smart-splits.nvim'] = {
    config = function() require 'nik.configs.smart-splits' end,
  },

  -- Terminal
  ["akinsho/toggleterm.nvim"] = {
    config = function() require 'nik.configs.toggleterm' end,
  },
}

local stdpath = vim.fn.stdpath
local packer_available, packer = pcall(require, 'packer')

if packer_available then
  packer.startup {
    function(use)
      for key, plugin in pairs(plugins) do
        if type(key) == 'string' and not plugin[1] then plugin[1] = key end
        use(plugin)
      end
    end,
    config = {
      compile_path = stdpath 'data' .. '/packer_compiled.lua',
      display = {
        open_fn = function() return require('packer.util').float { border = 'single' } end,
      },
      profile = {
        enable = true,
        threshold = 0.0001,
      },
      git = {
        clone_timeout = 300,
        subcommands = {
          update = 'pull --rebase',
        },
      },
      auto_clean = true,
      compile_on_sync = true,
    },
  }
end
