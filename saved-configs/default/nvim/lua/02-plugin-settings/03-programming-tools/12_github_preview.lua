-- ABOUT: 
-- Preview Markdown Files

--=============================================================================
-- Installation

vim.pack.add({
	{ 
        src = "https://github.com/wallpants/github-preview.nvim"
    }
})

--=============================================================================
-- Configuration

require("github-preview").setup({
    single_file = true,
    theme = {
        name = "dark", -- Set dark mode 
    },
    cursor_line = {
        disable = true, -- Disable cursor line in browser preview
    }

})

--=============================================================================
