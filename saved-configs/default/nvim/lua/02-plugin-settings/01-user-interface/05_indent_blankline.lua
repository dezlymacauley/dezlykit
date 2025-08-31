-- ABOUT: Displays vertical lines in the code editor to show indentation

--=============================================================================
-- Installation

vim.pack.add({
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" }
})

--=============================================================================
-- Configuration

require("ibl").setup({})

--=============================================================================
