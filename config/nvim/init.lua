
vim.g.haskell_tools = {
  ---@type ToolsOpts
  tools = {
    -- ...
  },
  ---@type HaskellLspClientOpts
  hls = {
    ---@param client number The LSP client ID.
    ---@param bufnr number The buffer number
    ---@param ht HaskellTools = require('haskell-tools')
    on_attach = function(client, bufnr, ht)
      -- Set keybindings, etc. here.
      -- ht.hls.settings.haskell.plugin.importLens.codeLensOn = false
    end,
    -- ...
    settings = {
      haskell = {
        plugin = {
          importLens = { globalOn = false },
          refineImports = { globalOn = false },
           -- TODO: Perhaps enable hlint and make more specific
          hlint = { codeActionsOn = false },
        }
      }
    }
  },
  ---@type HTDapOpts
  dap = {
    -- ...
  },
}

require("config.lazy")

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

