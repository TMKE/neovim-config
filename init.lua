--[[ init.lua  ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

vim.g.material_style = "darker" -- Available: darker, deep ocean,

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup {
    options = {
        theme = 'auto',
        disabled_filetypes = { 'packer', 'NvimTree' }
    }
}
require('nvim-autopairs').setup{}
require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true,
    show_first_indent_level = false,
    -- show_trailing_blankline_indent = false,
    use_treesitter = true,
}
require('gitsigns').setup {
  -- signs = {
  --   add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
  --   change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
  --   delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
  --   topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
  --   changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
  --   untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
  -- },
}
