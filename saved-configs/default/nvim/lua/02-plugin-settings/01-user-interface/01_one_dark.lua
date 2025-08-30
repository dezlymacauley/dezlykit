-- ABOUT: My favourite theme

--=============================================================================
-- Installation

vim.pack.add({
    { src = "https://github.com/navarasu/onedark.nvim" },
})

--=============================================================================
-- Configuration

-- The first task is to setup the default configurations 
-- of the plugin
require("onedark").setup({
    -- I prefer the `deep` version of the onedark theme
	style = "deep",
})

--=============================================================================
-- Activation

-- The second task is to actually set the plugin
-- as the colour scheme for the Neovim editor.
-- Most plugins that are not colour schemes will not have
-- a second task.
require("onedark").load()

--=============================================================================
