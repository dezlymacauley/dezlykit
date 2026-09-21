-- This will make the native Neovim UI transparent
vim.api.nvim_set_hl(0, "Normal",       { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder",  { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu",        { bg = "none" })
vim.api.nvim_set_hl(0, "Terminal",     { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "none" })
vim.api.nvim_set_hl(0, "FoldColumn",   { bg = "none" })
vim.api.nvim_set_hl(0, "Folded",       { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn",   { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC",     { bg = "none" })

-- NvimTree transparency
vim.api.nvim_set_hl(0, "NvimTreeNormal",      { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC",    { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit",   { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator",{ bg = "none" })

-- Bufferline transparency
-- Tells Neovim's rendering engine NOT to supply fallback background/foreground colors
-- for tabs, backgrounds, separators, close buttons, or selection indicators.
vim.api.nvim_set_hl(0, "TabLine",                     { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLineFill",                 { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineBufferSelected",    { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineBufferVisible",     { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineCloseButton",       { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected",{ bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparator",         { fg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible",  { fg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineIndicatorVisible",  { fg = "NONE", bg = "NONE" })

-- Statusline and Command line transparency
-- Removes the background color from the global statusline and message bar at the bottom.
vim.api.nvim_set_hl(0, "StatusLine",   { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "MsgArea",      { bg = "NONE", fg = "NONE" })

-- Split line styling
-- Gives both horizontal and vertical window splits a crisp line matching your theme.
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#70008B", bg = "NONE" })
