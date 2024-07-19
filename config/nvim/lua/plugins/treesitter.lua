local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    autoinstall = true,
    lazy = false,
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "markdown",
      "markdown_inline",
      "haskell",
      "haskell_persistent"
    },
    opts = {
      highlight = { enable = true },
    },
}

return {
	M
}
