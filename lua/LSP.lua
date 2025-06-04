local on_attach = function(_, bufnr)
    local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    -- LSP actions
    map('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    map('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    map('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
    map('K', vim.lsp.buf.hover, 'Hover Documentation')
    map('<C-k>', vim.lsp.buf.signature_help, 'Signature Help')

    map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame Symbol')
    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    map('<leader>f', function() vim.lsp.buf.format({ async = true }) end, '[F]ormat Buffer')

    -- Diagnostics
    map('[d', vim.diagnostic.goto_prev, 'Previous Diagnostic')
    map(']d', vim.diagnostic.goto_next, 'Next Diagnostic')
    map('<leader>e', vim.diagnostic.open_float, 'Explain Diagnostic')
    map('<leader>q', vim.diagnostic.setloclist, 'Diagnostics List')
end


local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Rust
lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- Go
lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- Zig
lspconfig.zls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- C, C++
lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- Lua (use sumneko_lua or lua_ls depending on system)
lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
            },
        }
    }
})

-- Python
lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- HTML
lspconfig.html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- CSS
lspconfig.cssls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

-- JavaScript (and TypeScript)
lspconfig.ts_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require('luasnip').expand_or_jumpable() then
                require('luasnip').expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
        { name = 'path' },
    })
})

