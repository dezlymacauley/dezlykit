-- `vim.o` is used to set an option for all windows in Neovim

-- Integrates Neovim with your system clipboard.
-- This creates a smooth user experience when copying and pasting 
-- between Neovim and other applications.
vim.o.clipboard = "unnamedplus"

-- I don't really need this.
-- Also the swapfile warning is annoying
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

-- When searching for text in a file using `/`,
-- Neovim with switch off the highlighting when I press `ctrl + c`
-- so stop searching.
vim.o.hlsearch = false

-- This will display a prompt that will ask you if you want to save,
-- if you try to close an unsaved file with `:q`
vim.o.confirm = true

-- Searching for text with `/` will not be case sensitive
vim.o.ignorecase = true

-- Searches will become case sensitve when the first word of your search,
-- starts with a capital letter.
vim.o.smartcase = true

-- Adds a rounded border for popup menus like `blink.cmp` autocompletion
-- and viewing documentation about a variable by pressing `k`
vim.o.winborder = "rounded"

-- This will disable the modeline.
-- When you enter Insert, Visual, or Visual line mode there is a display
-- at the bottom of the Neovim UI that will 
-- display something like -- INSERT --
vim.o.showmode = false

-- "auto" will hide the sign column on the left of the line numbers 
-- when there are no signs to show
vim.o.signcolumn = "auto"

-- Neovim uses the character `~` to show that 
-- you have reached the end of a file.
-- The technical term is `eob` (end of buffer).
-- So you may see a virtical column of `~` characters when you first open
-- up Neovim or when you are using a transparent background.
-- To clean up the UI, use this line to replace all the eob characters
-- with an empty space.
vim.opt.fillchars:append({ eob = " " })

-- When using the command `:new`, Horizontal splits always open below
vim.opt.splitbelow = true

-- When using the command `:vnew`, Vertical splits always open on the right
vim.opt.splitright = true
