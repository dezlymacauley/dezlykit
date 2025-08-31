-- ABOUT: Use treesitter to autoclose and autorename html tags

-- This plugin requires `nvim-treesitter` to work.

--=============================================================================
-- Installation

vim.pack.add({
	{ src = "https://github.com/windwp/nvim-ts-autotag" }
})

--=============================================================================
-- Configuration
require("nvim-ts-autotag").setup({
  opts = {
    enable_rename = true
  }
})

--=============================================================================
