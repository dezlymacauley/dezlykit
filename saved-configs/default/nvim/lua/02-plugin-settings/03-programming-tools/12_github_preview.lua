-- ABOUT: 
-- Preview Markdown Files

--=============================================================================

-- Clear any CursorHold autocommands for Markdown files first
-- vim.api.nvim_clear_autocmds({ event = "CursorHold", pattern = "*.md" })

--=============================================================================

-- Installation

-- vim.pack.add({
-- 	{ 
--         src = "https://github.com/wallpants/github-preview.nvim"
--     }
-- })

--=============================================================================
-- Configuration

-- require("github-preview").setup({
    -- single_file = true,
    -- theme = {
    --     name = "dark", -- Set dark mode 
    -- },
    -- cursor_line = {
    --     disable = true, -- Disable cursor line in browser preview
    -- }

-- })

--=============================================================================
