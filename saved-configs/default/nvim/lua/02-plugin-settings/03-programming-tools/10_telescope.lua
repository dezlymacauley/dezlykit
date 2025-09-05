-- ABOUT: Find, Filter, Preview, Pick. All lua, all the time. 

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/nvim-telescope/telescope.nvim",
    },
})

-- Dependency of telescope.nvim
vim.pack.add({
	{ 
        src = "https://github.com/nvim-lua/plenary.nvim"
    },
})

--=============================================================================
-- Configuration

require("telescope").setup({})

--=============================================================================
