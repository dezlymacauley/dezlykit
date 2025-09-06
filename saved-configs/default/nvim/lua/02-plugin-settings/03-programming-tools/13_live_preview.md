-- ABOUT: 
-- Preview Markdown Files

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/brianhuster/live-preview.nvim"
    }
})

-- Dependency of of live-preview
vim.pack.add({
	{ 
        src = "https://github.com/nvim-telescope/telescope.nvim",
    },
})


--=============================================================================
-- Configuration
require("livepreview.config").set()

--=============================================================================
