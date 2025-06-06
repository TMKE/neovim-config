--[[ init.lua  ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

vim.opt.list = true
-- vim.opt.listchars:append "eol:$"
-- vim.opt.listchars:append "space:⋅"


-- IMPORTS
require('vars')      -- Variables
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('opts')      -- Options
require('LSP')       -- LSP

-- PLUGINS
require('nvim-tree').setup {}
require('mini.starter').setup {}
--
require('flexoki').setup {}
--
require('lualine').setup {
    -- options = {
    --     theme = 'auto',

    --     disabled_filetypes = { 'packer', 'NvimTree' }
    -- }
    options = {
        theme = 'auto',
        -- component_separators = '|',
        component_separators = '•',
        section_separators = { left = '', right = '' },
        -- disabled_filetypes = { 'packer', 'NvimTree' },
        -- disabled_filetypes = {
        --     statusline = {},
        --     winbar = {},
        -- },
        globalstatus = true,
    },
    sections = {
        lualine_a = {
          { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
        },
        -- lualine_b = { 'filename', 'branch', 'diff', 'diagnostics' },
        lualine_b = { 'branch', 'diff'},
        -- lualine_c = {},
        lualine_c = {'diagnostics' },
        -- lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { left = '', right = '' }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    -- tabline = {
    --     lualine_a = {'buffers'},
    --     lualine_b = {},
    --     lualine_c = {},
    --     lualine_x = {},
    --     lualine_y = {},
    --     lualine_z = {}
    -- },
    -- winbar = {
    --   lualine_a = {},
    --   lualine_b = {},
    --   lualine_c = {'filename'},
    --   lualine_x = {},
    --   lualine_y = {},
    --   lualine_z = {}
    -- },
    extensions = { 'nvim-tree', 'toggleterm' },
}
require('nvim-autopairs').setup{}
require("indent_blankline").setup{
    space_char_blankline = " ",
    -- show_end_of_line = false,
    show_current_context = true,
    show_current_context_start = false,
    show_first_indent_level = false,
    show_trailing_blankline_indent = false,
    use_treesitter = true,

    char_blankline = '│',
    context_char = '┃',
    context_char_blankline = '┃',
    use_treesitter_scope = true,
    viewport_buffer = 30,
}
--
-- -- require("ibl").setup {
--
-- --     -- whitespace = {
-- --     --     -- highlight = highlight,
-- --     --     remove_blankline_trail = false,
-- --     -- },
-- --     whitespace = { highlight = { "Function", "Label" } },
-- --     scope = {
-- --        enabled = false,
-- --        show_start = true,
-- --        -- show_exact_scope = true,
-- --        show_end = false,
-- --        -- injected_languages = false,
-- --        highlight = { "Function", "Label" },
-- --        -- highlight = "Function"
-- --        -- priority = 500,
-- --     }
-- -- }
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
require('mini.cursorword').setup()
--
-- -- require('onedark').setup {
-- --     style = 'warmer', -- Available: dark, darker, cool, deep, warm, warmer, light
-- --     -- Change code style ---
-- --     -- Options are italic, bold, underline, none
-- --     -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
-- --     code_style = {
-- --         comments = 'italic',
-- --         keywords = 'italic',
-- --         functions = 'none',
-- --         strings = 'italic',
-- --         variables = 'none'
-- --     },
-- -- }
--
-- -- require('onedark').load()
--
require('Comment').setup()
--
require("nvim-surround").setup({
    -- Configuration here, or leave empty to use defaults
})
--
vim.o.timeout = true
vim.o.timeoutlen = 200
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
--
require('neogit').setup {}
--
require('barbecue').setup()
--
require('onedark').setup {
    style = 'warmer'
}
-- require("smear_cursor").toggle()
require("trouble").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "rust_analyzer",
    "gopls",
    "zls",
    "clangd",
    "lua_ls",
    "pyright",
    "html",
    "cssls",
    "ts_ls",
  },
})

require("lsp_signature").setup({})

