--[[ init.lua  ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup {
    options = {
        -- theme = 'dracula-nvim'
        -- theme = 'carbonfox'
        -- theme = 'mellow'
        theme = 'tokyonight',
    }
}
require('nvim-autopairs').setup{}
require('nightfox').setup {
    options = {
        transparent = false,    -- Disable setting background
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold"
        }
    }
}
require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context = true,
    -- show_current_context_start = true,
    -- show_first_indent_level = false,
    -- show_trailing_blankline_indent = false,
    use_treesitter = true,
}
require('gitsigns').setup()
