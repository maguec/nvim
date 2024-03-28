local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

  local uv = vim.uv
  if uv == nil then uv = vim.loop end
  local uname = uv.os_uname()


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
  use 'vimwiki/vimwiki'
  use 'mattn/calendar-vim'
  

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

  use {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
  end
  }

  --------------------------------------------
  --   File exporter
  --------------------------------------------
  use("nvim-tree/nvim-tree.lua")

  --------------------------------------------
  --   Infrastructure Stuff
  --------------------------------------------
  use("hashivim/vim-terraform")
  use("terrastruct/d2-vim")

  --------------------------------------------
  --   Coding Stuff
  --------------------------------------------
  use {
    'VonHeikemen/lsp-zero.nvim',
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

      -- Trouble shows code errors
      {'folke/trouble.nvim'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  --  use {
  --    'tanvirtin/vgit.nvim',
  --    requires = {
  --      'nvim-lua/plenary.nvim'
  --    }
  --  }
  use 'folke/neodev.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ray-x/guihua.lua'
  use {
  	"ray-x/go.nvim",
  	requires = "ray-x/guihua.lua",
  	config = [[require('config.go')]],
  	ft = { "go" }
  }
      -- Git
  use {
  	"NeogitOrg/neogit",
  	requires = { 
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
		}
	}
--- use 'tpope/vim-fugitive'
---  use 'airblade/vim-gitgutter'
      -- Tabs
  use 'godlygeek/tabular'
      -- Ansible
  use 'mfussenegger/nvim-ansible'

  -----------------------------------------------------------------------------
  -- In the case of the Mac we don't want this extension
  -----------------------------------------------------------------------------
  if uname.sysname ~= "Darwin" then

    use 'nvim-neorocks/rocks.nvim'

    use {
      'Exafunction/codeium.vim',
      config = function ()
        vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
        vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
        vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
        vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
      end
    }
  end

-- Close it
  end)
