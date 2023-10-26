
local lsp_zero = require("lsp-zero")

lsp_zero.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls' },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end
    },
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('lspconfig').omnisharp.setup({
    cmd = {Omnisharp_path, "--languageserver" },
    on_init = function(client)
      client.server_capabilities.semanticTokensProvider = nil
    end,
})


vim.g.OmniSharp_highlighting = 0
vim.g.OmniSharp_server_use_net6 = 1

require('lspconfig').tsserver.setup({})

lsp_zero.setup()

vim.diagnostic.config({
    virtual_text = true
})

