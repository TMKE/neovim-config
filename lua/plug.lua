--

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
  use "nvim-treesitter/nvim-treesitter"              -- Nvim Treesitter configurations

  use "udalov/kotlin-vim"
  use "uiiaoo/java-syntax.vim"

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  -- use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }


  -- [[ colorschemes ]]
  use { 'kaiuri/nvim-juliana' }
  use 'ribru17/bamboo.nvim'
  use 'navarasu/onedark.nvim'
  use 'savq/melange-nvim'
  use 'sainnhe/sonokai'


  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  -- use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  use { 'tpope/vim-commentary' }					 -- comment stuff out
  use { 'tpope/vim-surround' }                       -- add surroundings in pairs
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
