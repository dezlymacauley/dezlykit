-- ABOUT: A pretty list for showing diagnostics, references, 
-- telescope results, 
-- quickfix and location lists 
-- to help you solve all the trouble your code is causing.

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/folke/trouble.nvim",
    },
})

--=============================================================================
-- Configuration

require("trouble").setup({})

--=============================================================================
