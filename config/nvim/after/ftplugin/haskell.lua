-- ~/.config/nvim/after/ftplugin/haskell.lua
local ht = require('haskell-tools')
local bufnr = vim.api.nvim_get_current_buf()
local opts = { noremap = true, silent = true, buffer = bufnr, }
-- haskell-language-server relies heavily on codeLenses,
-- so auto-refresh (see advanced configuration) is enabled by default
vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
-- Hoogle search for the type signature of the definition under the cursor
vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
-- Evaluate all code snippets
vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
-- Toggle a GHCi repl for the current package
vim.keymap.set('n', '<leader>rr', ht.repl.toggle, opts)
-- Toggle a GHCi repl for the current buffer
vim.keymap.set('n', '<leader>rf', function()
  ht.repl.toggle(vim.api.nvim_buf_get_name(0))
end, opts)
vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)

vim.api.nvim_set_hl(0, 'Operator',                { link = '@lsp.type.macro'})
vim.api.nvim_set_hl(0, '@keyword.directive.haskell', { link = '@lsp.type.macro'})
vim.api.nvim_set_hl(0, '@keyword.import.haskell', { link = 'include'})
vim.api.nvim_set_hl(0, '@keyword.haskell', { link = 'include'})
vim.api.nvim_set_hl(0, '@haskell.type_signature', { link = '@lsp.type.decorator'})
vim.api.nvim_set_hl(0, '@function.haskell', { link = '@lsp.type.macro'})
vim.api.nvim_set_hl(0, '@constructor.haskell', { link = 'Identifier'})
vim.api.nvim_set_hl(0, '@module.haskell', { link = '@lsp.type.class'})
-- vim.api.nvim_set_hl(0, 'LspCodeLens', { fg = '#AAAAAA', underline=false, })
vim.api.nvim_set_hl(0, 'LspCodeLens', { link = '@lsp.type.comment' })
vim.api.nvim_set_hl(0, 'LspInlayHint', { link = '@lsp.type.comment' })
vim.api.nvim_set_hl(0, 'ReferenceText', { link = '@lsp.type.comment' })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { link = '@lsp.type.comment' })

