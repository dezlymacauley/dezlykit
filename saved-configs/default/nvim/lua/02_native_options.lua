-- `vim.o` is used to set an option for all windows in Neovim

-- Integrates Neovim with your system clipboard.
-- This creates a smooth user experience when copying and pasting 
-- between Neovim and other applications.
vim.o.clipboard = "unnamedplus"

vim.o.swapfile = false

vim.o.number = true -- Show line numbers

-- Text will stay on the same line no matter the size of the terminal
vim.o.wrap = false

-- Displays a horizontal line that shows what line your cursor is on.
vim.o.cursorline = true

-- 4 Space indentation
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
