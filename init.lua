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

require('Comment').setup()

require("nvim-surround").setup({
    -- Configuration here, or leave empty to use defaults
})

vim.o.timeout = true
vim.o.timeoutlen = 200
require("which-key").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

require('neogit').setup {}

require('barbecue').setup()

require("neomodern").setup({
  -- MAIN OPTIONS --
  -- Choose between 'iceclimber', 'coffeecat', 'darkforest', 'roseprime', 'daylight'
  theme = "coffeecat",
  -- Keymap (in normal mode) to toggle between themes in theme list
  cycle_theme_key = nil,
  cycle_theme_list = { "iceclimber", "coffeecat", "darkforest", "roseprime", "daylight" },
  -- Keymap (in normal mode) to toggle between light and dark mode.
  -- Recommended to remove `daylight` from `toggle_theme_list` if you are also using
  -- `cycle_theme_key` keymap for a more intuitive cycle behavior
  toggle_mode_key = nil,
  -- Don't set background
  transparent = false,
  -- If true, enable the terminal
  term_colors = true,
  -- If true, docstrings will be highlighted like strings, otherwise they will be highlighted
  -- like comments. Note, behavior is depending on the language server.
  colored_docstrings = true,
  -- If false, brackets will be highlighted similar to the default fg color
  colored_brackets = true,
  -- Don't set background of floating windows. Recommended for when using floating windows
  -- with borders.
  plain_float = false,
  -- Show the end-of-buffer tildes
  show_eob = true,
  -- If true, highlights {sign,fold}column the same as cursorline
  cursorline_gutter = true,
  diagnostics = {
    darker = true, -- Darker colors for diagnostic
    undercurl = true, -- Use undercurl for diagnostics
    background = true, -- Use background color for virtual text
  },

  -- CODE FORMATTING --
  -- The following table accepts values the same as the `gui` option for normal
  -- highlights. For example, `bold`, `italic`, `underline`, `none`.
  code_style = {
    comments = "italic",
    conditionals = "none",
    functions = "none",
    keywords = "none",
    -- Markdown headings
    headings = "bold",
    operators = "none",
    keyword_return = "none",
    strings = "none",
    variables = "none",
  },

  -- PLUGINS --
  -- The following options allow for more control over some plugin appearances.
  plugin = {
    lualine = {
      -- Bold lualine_a sections
      bold = true,
      -- Don't set section/component backgrounds. Recommended to not set
      -- section/component separators.
      plain = false,
    },
    cmp = {
      -- Don't highlight lsp-kind items. Only the current selection will be highlighted.
      plain = false,
      -- Reverse lsp-kind items' highlights in cmp menu.
      reverse = false,
    },
    -- Options are 'borderless' or 'bordered'.
    telescope = "bordered",
  },

  -- CUSTOM HIGHLIGHTS --
  -- Override default colors
  colors = {},
  -- Override highlight groups
  highlights = {},
})
-- Convenience function that simply calls `:colorscheme <theme>` with the theme
-- specified in your config. If not specified, `iceclimber` is used.
require("neomodern").load()
