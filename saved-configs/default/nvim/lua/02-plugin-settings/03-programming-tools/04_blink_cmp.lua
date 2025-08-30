-- ABOUT: Rust-powered text and autocompletion
-- It automatically has access to whatever the built-in `vim.lsp` has
-- to suggest.

--=============================================================================
-- Installation

vim.pack.add({
	-- You have to pick a version tag from the list below or it won't work
    -- https://github.com/Saghen/blink.cmp/tags
	{ src = "https://github.com/Saghen/blink.cmp", version = "v1.6.0" },
})

--=============================================================================
-- Configuration

require("blink.cmp").setup({})

--=============================================================================
