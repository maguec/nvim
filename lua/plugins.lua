vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

  --------------------------------------------
  -- Packer can manage itself
  --------------------------------------------
  use 'wbthomason/packer.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'b0o/schemastore.nvim'
  use 'nvim-lua/plenary.nvim'
  

  --------------------------------------------
  -- Telescope all the things
  --------------------------------------------
  use {
	  "nvim-telescope/telescope.nvim",
	  requires = { "nvim-lua/plenary.nvim" },
  }
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    requires = { "nvim-telescope/telescope.nvim" },
    run = "make",
  }

  --------------------------------------------
  -- TreeSitter
  --------------------------------------------
  use { "nvim-treesitter/nvim-treesitter" }
  use { 'nvim-treesitter/playground', after = 'nvim-treesitter' }
  use { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' }
  use { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' }
  use { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' }

  --------------------------------------------
  -- Visual Stuff
  --------------------------------------------
  use 'folke/tokyonight.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
  	'akinsho/bufferline.nvim', 
  	config = [[require('config.bufferline')]], -- May vary
  	requires = 'kyazdani42/nvim-web-devicons',
  }

  --------------------------------------------
  --   Coding Stuff
  --------------------------------------------
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'folke/neodev.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ray-x/guihua.lua'
  use { 
  	"ray-x/go.nvim",
  	requires = "ray-x/guihua.lua",
  	config = [[require('config.go')]], 
  	ft = { "go" }
  }

-- Close it
  end)
