--=============================================================================
-- SECTIO: Keymaps for native functionality

vim.keymap.set(
        -- `:update` will save the file if there are changes
        -- `:source %` will reload the current file
        -- `silent = true` means the command will not be saved to the command
        -- line.
	"n", "<leader>o", ":update<CR>:source %<CR>",
         { desc = "Save and reload current file", silent = true }
)

-- `vim.lsp` is vim's native keymap.
-- auto-formats your code based on the language server’s formatting rules.
vim.keymap.set(
	"n", "<leader>lf", vim.lsp.buf.format
)


--=============================================================================
-- SECTION: Keymaps for plugins

-- Keymap for oil.nvim
vim.keymap.set(
	"n", "<leader>fe", "<CMD>Oil<CR>",
	{ desc = "[f]ile [e]xplorer", silent = true }
) --=============================================================================
