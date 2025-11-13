-- ABOUT: 
-- Preview Markdown Files

--=============================================================================

-- Installation
vim.pack.add({
	{ 
        src = "https://github.com/toppair/peek.nvim",
        build = "deno task --quiet build:fast",
    }
})

-- NOTE: After Installation you need to manually run these commands:

--[[
    cd $HOME/.local/share/nvim/site/pack/core/opt/peek.nvim
    deno task build:fast
]]

--=============================================================================
-- Configuration

require("peek").setup({
    app = { 'google-chrome-stable', '--new-window' },
    theme = "dark",
})

--=============================================================================
-- Create the `PeekOpen`, and `PeekClose` commands

vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})

--=============================================================================
