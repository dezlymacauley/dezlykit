-- ABOUT: Displays file type icons

-- This is a dependency of `bufferline.nvim`
-- It provides the filetype icons next the the name of each open tab

-- This is also a dependency of `oil.nvim`
-- It is also used by `oil.nvim` to display icons 
-- next to the names of files and directory.

--=============================================================================
-- Installation

vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons"},
})

--=============================================================================
-- Configuration

require("nvim-web-devicons").setup({})

--=============================================================================
