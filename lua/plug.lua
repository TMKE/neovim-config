--

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
  use "nvim-treesitter/nvim-treesitter"              -- Nvim Treesitter configurations

  -- use "udalov/kotlin-vim"
  -- use "uiiaoo/java-syntax.vim"

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  -- use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }

  use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
    "SmiteshP/nvim-navic",
    -- "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  -- after = "nvim-web-devicons", -- keep this if you're using NvChad
  -- config = function()
  --   require("barbecue").setup()
  -- end,
  })



  -- [[ colorschemes ]]
  use 'ribru17/bamboo.nvim'
  use 'savq/melange-nvim'
  use 'sainnhe/sonokai'
  use 'NTBBloodbath/sweetie.nvim'
  use 'killitar/obscure.nvim'
  use 'Styzex/Sonomin.nvim'
  use 'steguiosaur/fullerene.nvim'
  use 'dgox16/oldworld.nvim'
  use 'nyoom-engineering/oxocarbon.nvim'
  use 'sample-usr/rakis.nvim'
  use 'scottmckendry/cyberdream.nvim'
  use 'craftzdog/solarized-osaka.nvim'
  use 'cdmill/neomodern.nvim'

  use "sindrets/diffview.nvim"
  use { 'NeogitOrg/neogit', tag = "v0.0.1" }

  use 'folke/which-key.nvim'

  use 'folke/trouble.nvim'

  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  -- use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  -- use { 'tpope/vim-commentary' }					 -- comment stuff out
  use 'numToStr/Comment.nvim'
  -- use { 'tpope/vim-surround' }                       -- add surroundings in pairs
  use 'kylechui/nvim-surround'
  use { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.8" }         -- add indentation lines to all lines (including empty lines)
  use "lewis6991/gitsigns.nvim"                      -- Git integration for buffers 
  use {'neoclide/coc.nvim', branch = 'release'}      -- autocompletion
  use "lervag/vimtex"
  use 'jbyuki/nabla.nvim'                            -- <Leader>p to show math equation in popup
  use { 'echasnovski/mini.cursorword', branch = 'stable' }
end)
-- config = {
--  package_root = vim.fn.stdpath('config') .. '/site/pack'
-- })
