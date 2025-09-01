--=============================================================================

-- This remaps `Ctrl + c` to the `Esc` keep so that I don't see the message
-- `Type :qa and press <Enter> to exit Nvim` when I press `Ctrl + c` twice
-- to exit normal mode.

vim.keymap.set(
    "n", "<C-c>", 
    "<Esc>", 
    { noremap = true, silent = true }
)


-- SECTION: Native Keymaps => Buffer Navigation 

-- Ctrl + n
vim.keymap.set(
    "n", "<C-n>",
    ":bn<CR>",
    { desc = "[n]ext buffer", noremap = true, silent = true }
)

-- <leader> key + c
vim.keymap.set(
    "n", "<leader>c",
    ":bd<CR>",
    { desc = "[c]lose buffer", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Native Keymaps => Terminal Navigation

-- <leader> key + t
-- This will open a new terminal on the bottom right that has no line numbers,
-- and you will be insert mode when this terminal opens up.
vim.keymap.set(
    "n", "<leader>t",
    ":belowright split<CR>"
    .. ":terminal<CR>"
    .. ":setlocal nonumber norelativenumber<CR>"
    .. "i",
    { desc = "[t]erminal", noremap = true, silent = true }
)

-- Alt + e
-- Switches yout back to `Normal Mode` when using the `Terminal Mode`,
-- and then moves your cursor back to the window that contains your code.
-- The terminal will be left running.
vim.keymap.set(
    "t", "<M-e>",
    "<C-\\><C-n><C-w>w",
    { desc = "[e]xit terminal mode", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Native Keymaps => Window Navigation

-- Ctrl + h
vim.keymap.set(
    "n", "<C-h>", 
    "<C-w><C-h>", 
    { desc = "Move focus to the window on the left", noremap = true, silent = true }
)

-- Ctrl + j
vim.keymap.set(
    "n", "<C-j>", 
    "<C-w><C-j>", 
    { desc = "Move focus to the window below", noremap = true, silent = true }
)

-- Ctrl + k
vim.keymap.set(
    "n", "<C-k>", 
    "<C-w><C-k>", 
    { desc = "Move focus to the window above", noremap = true, silent = true }
)

-- Ctrl + l
vim.keymap.set(
    "n", "<C-l>", 
    "<C-w><C-l>", 
    { desc = "Move focus to the window on the right", noremap = true, silent = true }
)

--=============================================================================
-- SECTION: Plugin Keymaps => oil.nvim
--=============================================================================

vim.keymap.set(
	"n", "<leader>fe", 
    ":Oil<CR>",
	{ desc = "[f]ile [e]xplorer", noremap = true, silent = true }
) 

--=============================================================================
