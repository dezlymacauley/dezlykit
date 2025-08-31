-- ABOUT: A data only plugin (does not have a `require` line) 
-- It provides snippets for various programming languages.
-- This plugin is a dependency of `blink.cmp`
-- Blink will automatically use it.
-- Example of usage:
-- Typing `div` and selecting with `y` in an html file will to create 
-- `<div></div>` without having to type the angle brackets.

--=============================================================================
-- Installation

vim.pack.add({
	-- You have to pick a version tag from the list below or it won't work
    -- https://github.com/Saghen/blink.cmp/tags
	{ src = "https://github.com/rafamadriz/friendly-snippets" }
})

--=============================================================================
