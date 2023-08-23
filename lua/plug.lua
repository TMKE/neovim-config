--

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
  use "nvim-treesitter/nvim-treesitter"              -- Nvim Treesitter configurations

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  -- use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }

  -- [[ colorschemes ]]
  -- use { 'Mofiqul/dracula.nvim' }                     -- dracula colorscheme
  use { 'maxmx03/dracula.nvim'}
  use 'folke/tokyonight.nvim'                        -- tokyonight colorscheme
  use "rebelot/kanagawa.nvim"                        -- kanagawa colorscheme
  use { 'kaiuri/nvim-juliana' }
  use "savq/melange"
  use 'ribru17/bamboo.nvim'
  use "NTBBloodbath/sweetie.nvim"
  use 'xiantang/darcula-dark.nvim'
  use "Alexis12119/nightly.nvim"
  use "bartekprtc/gruv-vsassist.nvim"


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
  use "lukas-reineke/indent-blankline.nvim"          -- add indentation lines to all lines (including empty lines)
  use "lewis6991/gitsigns.nvim"                      -- Git integration for buffers 
  use {'neoclide/coc.nvim', branch = 'release'}      -- autocompletion
  use "lervag/vimtex"
  use 'jbyuki/nabla.nvim'                            -- <Leader>p to show math equation in popup
  use { 'echasnovski/mini.cursorword', branch = 'stable' }
end)
-- config = {
--  package_root = vim.fn.stdpath('config') .. '/site/pack'
-- })
