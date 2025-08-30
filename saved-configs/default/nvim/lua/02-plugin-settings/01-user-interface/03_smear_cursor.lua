-- ABOUT: Animated cursor

--=============================================================================
-- Installation

vim.pack.add({
    { src = "https://github.com/sphamba/smear-cursor.nvim" }
})

--=============================================================================
-- Configuration

require("smear_cursor").setup({
    cursor_color = "#00ffbc"
})

--=============================================================================
