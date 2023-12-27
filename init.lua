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
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup{}
-- require("gruv-vsassist").setup({
--     -- Enable italic comment
--     italic_comments = true,
-- })


require('lualine').setup {
    -- options = {
    --     theme = 'auto',

    --     disabled_filetypes = { 'packer', 'NvimTree' }
    -- }
    options = {
        theme = 'auto',
        component_separators = '|',
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
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch', 'diff', 'diagnostics' },
        lualine_c = {},
        -- lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
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

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    -- disable = function(lang, buf)
    --     local max_filesize = 100 * 1024 -- 100 KB
    --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --     if ok and stats and stats.size > max_filesize then
    --         return true
    --     end
    -- end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  -- indent {
  --     enable = true,
  --     disable = {}
  -- }
}


-- local highlight = {
--     "CursorColumn",
--     "Whitespace",
-- }

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

-- require("ibl").setup {

--     -- whitespace = {
--     --     -- highlight = highlight,
--     --     remove_blankline_trail = false,
--     -- },
--     whitespace = { highlight = { "Function", "Label" } },
--     scope = {
--        enabled = false,
--        show_start = true,
--        -- show_exact_scope = true,
--        show_end = false,
--        -- injected_languages = false,
--        highlight = { "Function", "Label" },
--        -- highlight = "Function"
--        -- priority = 500,
--     }
-- }
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

-- require('onedark').setup {
--     style = 'warmer', -- Available: dark, darker, cool, deep, warm, warmer, light
--     -- Change code style ---
--     -- Options are italic, bold, underline, none
--     -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--     code_style = {
--         comments = 'italic',
--         keywords = 'italic',
--         functions = 'none',
--         strings = 'italic',
--         variables = 'none'
--     },
-- }

-- require('onedark').load()

