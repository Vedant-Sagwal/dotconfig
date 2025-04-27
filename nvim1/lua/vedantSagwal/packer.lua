vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }	


  use({
      'EdenEast/nightfox.nvim',
      as = 'nightfox',
      config = function()
          options = {
              styles = {
                  comments = "italic",
                  keywords = "bold",
                  types = "bold",
              }
          } 
          vim.cmd('colorscheme nightfox')
      end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})	
  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
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

  use {
      'saghen/blink.nvim',
      requires = { 'saghen/blink.cmp' }
  }


  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
          require('lualine').setup {
              options = {
                  theme = 'nightfox',  -- Choose a theme (e.g., 'rose-pine', 'gruvbox', etc.)
                  section_separators = { left = '', right = '' },
                  component_separators = { left = '', right = '' },
              },
          }
      end
  }
end)

