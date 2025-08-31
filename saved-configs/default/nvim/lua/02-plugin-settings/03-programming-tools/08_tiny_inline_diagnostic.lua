-- ABOUT: Displays inline error messages with a better appearance
-- than the default Neovim one.

--=============================================================================
-- Installation

vim.pack.add({
	{ src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim"}
})

--=============================================================================
-- Configuration

-- Disables the built-in virtual_text diagnostic messages from Neovim,
-- so that only virtual_text from `tiny-inline-diagnostics-nvim` is used.
vim.diagnostic.config({ virtual_text = false })

require("tiny-inline-diagnostic").setup({
    signs = {
        diag = "🛠️",
    }
})

--=============================================================================
