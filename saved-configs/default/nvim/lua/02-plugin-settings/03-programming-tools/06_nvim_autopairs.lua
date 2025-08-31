-- ABOUT: Bracket Pair Autocompletion 

-- This plugin requires `nvim-treesitter` to work.

-- When you type ( or { or [,
-- the closing of the pair will be added for you.
-- E.g. () {} [] `` '' ""

--=============================================================================
-- Installation

vim.pack.add({
	{ src = "https://github.com/windwp/nvim-autopairs" }
})

--=============================================================================
-- Configuration
require("nvim-autopairs").setup({})

--=============================================================================
