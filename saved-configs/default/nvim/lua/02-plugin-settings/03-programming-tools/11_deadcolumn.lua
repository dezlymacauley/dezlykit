-- ABOUT:
-- This is linked to the option: vim.opt.colorcolumn = '80'
-- This will hide the vertical line on the right,
-- and only make it visible when you are approaching the character limit

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/Bekaboo/deadcolumn.nvim",
    },
})


--=============================================================================
-- Configuration

require("deadcolumn").setup({
    blending = {
        colorcode = "#750095",
    }
})

--=============================================================================
