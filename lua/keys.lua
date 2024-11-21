--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})

-- Toggle nvim-tree
map('n', '<Leader>n', [[:NvimTreeToggle<cr>]], {})
map('n', '<Leader>l', [[:IndentBlanklineToggle<cr>]], {})
map('n', '<Leader>t', [[:TagbarToggle<cr>]], {})
map('n', '<Leader>ff', [[:Telescope find_files<cr>]], {})
map('n', '<Leader>fr', [[:Telescope oldfiles<cr>]], {})
map('n', '<Leader>fs', [[:Telescope live_grep<cr>]], {})
map('n', '<Leader>fc', [[:Telescope grep_string<cr>]], {})
map('n', '<Leader>fb', [[:Telescope buffers<cr>]], {})
map('n', '<Leader>fz', [[:Telescope current_buffer_fuzzy_find<cr>]], {})
map('n', '<Leader>r', [[:Telescope registers<cr>]], {})
map('n', '<Leader>fh', [[:Telescope highlights<cr>]], {})
-- Exit Telescope with <C-c>
map('n', '<Leader>b', [[:bn<cr>]], {})
map('n', '<Leader>q', [[:bdelete %<cr>]], {})
map('n', '<Leader>sl', [[:set background=light<cr>]], {})
map('n', '<Leader>sd', [[:set background=dark<cr>]], {})
map('n', '<Leader>w', [[<c-w>]], {})
map('t', '<c-[>', [[<Esc>]], {})
map('t', '<Esc>', [[<c-\><c-n>]], {})
map('n', 'dm', [[:delmarks ]], {})

-- Quickfix
map('n', '<Leader>h', [[:cnext<cr>]], {})
map('n', '<Leader>;', [[:cprev<cr>]], {})

-- Inspect highlight group
map('n', '<Leader>i', [[:Inspect<cr>]], {})

-- Toggle colorizer plugin
map('n', '<Leader>c', [[:ColorizerToggle<cr>]], {})
