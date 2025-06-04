local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end

    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add {

    -- Filesystem navigation
    {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        -- cond = keys('n', 'gc'),
    },

    -- Syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        run = ':TSUpdate'
    },

    -- Start screen
    'echasnovski/mini.starter',
    -- 'mhinz/vim-startify';

    -- Statusline
    {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    },

    -- LSP and autocompletion
    -- {'neoclide/coc.nvim', branch = 'release'};
    'neovim/nvim-lspconfig',    -- LSP configs
    'hrsh7th/nvim-cmp',         -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
    'hrsh7th/cmp-buffer',       -- Buffer completions
    'hrsh7th/cmp-path',         -- File path completions
    'L3MON4D3/LuaSnip',         -- Snippet engine
    'saadparwaiz1/cmp_luasnip', -- Snippet completions

    -- Show LSP signature hint while typing
    'ray-x/lsp_signature.nvim',

    -- Manage LSP servers
    { "williamboman/mason.nvim", run = ":MasonUpdate" },
    "williamboman/mason-lspconfig.nvim",

    -- VS Code like winbar that display LSP context
    {
        "utilyre/barbecue.nvim",
        requires = "SmiteshP/nvim-navic",
    },

    -- Colorschemes
    'ribru17/bamboo.nvim',
    'sainnhe/sonokai',
    'nyoom-engineering/oxocarbon.nvim',
    'navarasu/onedark.nvim',
    'wesleimp/min-theme.nvim',
    'datsfilipe/vesper.nvim',
    'forest-nvim/sequoia.nvim',
    'cpplain/flexoki.nvim',

    -- Show code structure
    'majutsushi/tagbar',

    -- Use Git inside NeoVim
    'tpope/vim-fugitive',

    -- Git commit browser
    'junegunn/gv.vim',

    -- Add Git signs
    "lewis6991/gitsigns.nvim",

    -- View changed files
    "sindrets/diffview.nvim",

    -- Git interface
    { 'NeogitOrg/neogit',        tag = "v0.0.1" },

    -- Show available keybindings
    'folke/which-key.nvim',

    -- Show diagnostics
    'folke/trouble.nvim',

    -- Find files, buffers, text, ...
    {
        'nvim-telescope/telescope.nvim', -- fuzzy finder;
        requires = 'nvim-lua/plenary.nvim',
    },

    -- Auto-close brackets, parenthesis, ...
    'windwp/nvim-autopairs',

    -- Comment things
    'numToStr/Comment.nvim',
    -- 'tpope/vim-commentary';

    -- Surround in pairs
    'kylechui/nvim-surround',
    -- 'tpope/vim-surround';

    -- Add indentation lines
    { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.8" },
    -- use { 'Yggdroot/indentLine' }

    -- Latex syntax and filetype support
    "lervag/vimtex",

    -- ASCII math formulas generator for Latex files
    'jbyuki/nabla.nvim', -- <Leader>p to show math equation in popup

    -- Highlight words under the cursor
    { 'echasnovski/mini.cursorword',         branch = 'stable' },

    -- Animate the cursor with a smear effect
    'sphamba/smear-cursor.nvim',
}


-- Packer plugin manager
-- return require('packer').startup(function(use)
--   -- [[ Plugins Go Here ]]
-- end)
-- -- config = {
-- --  package_root = vim.fn.stdpath('config') .. '/site/pack'
-- -- })
